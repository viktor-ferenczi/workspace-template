#!/usr/bin/env bash
# Reserves the next ticket number by creating its file from Template.md and
# prints the new file's path.
#
# Usage: new-ticket.sh PREFIX [TICKETS_DIR]
#   PREFIX       ticket name prefix, like T for T-0001.md
#   TICKETS_DIR  defaults to the tickets folder next to this script's folder
#
# The file is created with noclobber (O_EXCL), so parallel sessions racing
# for the same number can't both get it: the loser moves on to the next one.
set -euo pipefail

prefix=${1:?usage: new-ticket.sh PREFIX [TICKETS_DIR]}
dir=${2:-$(dirname "$0")/../tickets}
template=$dir/Template.md
[[ -f $template ]] || { echo "missing $template" >&2; exit 1; }

# Highest number in use, including completed and canceled tickets
last=$(find "$dir" -name "$prefix-[0-9][0-9][0-9][0-9].md" -printf '%f\n' | sort | tail -1)
last=${last#"$prefix-"}
last=${last%.md}
n=$((10#${last:-0} + 1))

set -C
until { cat "$template" >"$(printf '%s/%s-%04d.md' "$dir" "$prefix" "$n")"; } 2>/dev/null; do
    n=$((n + 1))
done
printf '%s/%s-%04d.md\n' "$dir" "$prefix" "$n"
