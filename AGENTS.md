# TODO

## Overview

TODO

## References
- TODO

## People
- Viktor - Developer
- TODO

## Working copy folders
- `repo-folder`: TODO

## Local folders

These contain files related to ongoing work. They are also kept for later reference and committed into this repository.

- `plans`: Keep plans in this folder. Each plan is either a Markdown file or a subdirectory with a PLAN.md file and supplementary file(s). They are created and executed only at the request of the user.
- `notes`: Add notes/findings in this folder. Each note is either a Markdown file or a subdirectory with a NOTE.md file and supplementary file(s). They are created automatically and referenced during related tasks.
- `tickets`: Local ticketing system to track remaining work and issues found during development and testing.

## Ticket system

These tickets will be worked on only on this machine, they don't have to be portable. 
Tickets are Markdown files in `'T-{number:04d}.md'` format. Move completed or canceled tickets in the respective subdirectories. 
Use a standard ticket header format as a Markdown frontmatter, follow `tickets/Template.md` for ticket creation, but can extend the format as needed. Ticket frontmatter may change over time. 
Supplementary files should go into notes which the tickets can reference and even share if related. Tickets should reference the task or plan they are related to. 
Defects found in unrelated code during work may be added as tickets to avoid scope creep and mixed changesets.
The sub-workspaces use their own ticket system, but has access to this top level one, should an issue need to be elevated to this level or referenced from here.

## Guidelines
- Use the `swdev-best-practices` skill while architecting software or writing code.
- Use the `humanizer` skill while writing or updating documentation, comments or any other prose. This will make them sound less "LLM-ism".
- Use the `ponytail` skill while writing code.
- When getting a new PR ready for review suggest running the `consistency-check` skill to catch any leftover issues.
- Use American English, for example instead of "analyse" write "analyze". 
- The workspace level rules here are supposed to be maintained by humans.
- Do not add/remove project folders without explicit request or permission. They are supposed to be linked or cloned here by humans.
- Use `black` to auto-format Python code.
- Use `csharpier` to auto-format C# code.
