# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is the openwashdata newsletter repository for managing monthly newsletter content, drafts, and archives. The project creates newsletters highlighting open WASH (Water, Sanitation, and Hygiene) data releases, community contributions, and engagement opportunities.

## Content Structure

### Current Issue Development
- Current issues are developed as both `.md` and `.qmd` files (e.g., `issue-16.md`, `issue-16.qmd`)
- The `.qmd` format uses R chunks to dynamically generate package information
- Issues follow naming convention: `issue-{number}-{year}-{month}.{ext}`

### Archive Management
- Completed newsletters are moved to the `archive/` directory
- Archive command: `git mv issue-* archive/` (moves all issues to archive)
- Single issue: `git mv issue-06-2024-01.md archive/`

### Template and Strategy
- `template.md` provides the standard newsletter structure
- `strategy.md` contains content guidelines and publishing schedule
- Newsletter follows monthly cycle (first Monday of each month)

## Newsletter Content Structure

### Required Sections
1. **Announcements/Highlights**: Project updates, new packages, important developments
2. **Blog Post**: Tips, tutorials, or open science demos
3. **Contributor Appreciation**: Monthly contributor spotlight
4. **Get Involved**: Participation opportunities and community links

### Optional Sections
- Upcoming events
- Partner/Community announcements  
- Opportunities

## R Integration

### Quarto Files (.qmd)
- Use R chunks to dynamically pull package descriptions
- Example: `packageDescription(new_pkgs[[1]])$Title`
- Install packages with: `devtools::install_github(paste0("openwashdata", "/", new_pkgs))`

### Package Information
- New packages are defined in R vectors at the top of .qmd files
- Package websites follow pattern: `https://openwashdata.github.io/{package-name}`

## Monthly Publishing Cycle

- **Week 1**: Send newsletter
- **Week 2**: Archive previous issue, collect feedback  
- **Week 3**: Write blog content, choose highlights
- **Week 4**: Write and review next newsletter

## Writing Style and Tone
- Use clear, direct language without excessive superlatives
- Avoid overused filler words like "thrilled", "excited", "remarkable", "significantly", "outstanding"
- Prefer simple, factual descriptions over hyperbolic language
- Let the content speak for itself without overselling
- Avoid software development lingo in newsletter text, such as version
  numbers ("version 1.1.0", "v1.0.0"). Describe package updates in plain
  language and link to the release notes for details
- No HTML comments, TODO notes, or held-back content in newsletter
  files. Open points and future content ideas go to the GitHub issue
  tracker (or the vault), not into the files
- Use 2 spaces for indentation (no tabs)
- Maximum 80 characters per line

## Sending via Buttondown

- Newsletters are sent with Buttondown. Drafts are created via the REST
  API (`https://api.buttondown.com/v1/emails`); the API key is stored in
  the macOS keychain (`security find-generic-password -s buttondown -w`)
- Email subject convention: `openwashdata news XX - <tagline>`, where
  the tagline is one or two words drawn from the lead story (for
  example "new faces", "open position", "what's next")
- Sending is always done manually in the Buttondown UI, never via the
  API
- The newsletter uses Atkinson Hyperlegible Next for all text, from
  openwashdata/brand v1.0.0. The CSS pasted into Buttondown's design
  settings lives in `buttondown/` (see strategy.md, Design) and must
  target `ul, ol, li` with `!important` in addition to paragraphs, or
  list items fall back to Buttondown's serif default
- Section headings use emojis, following the style of previous issues

## Key Links Template
- Chatroom: `https://openwashdata.org/pages/get-started/chat/`
- Data sharing guide: `https://openwashdata.org/pages/blog/posts/2024-05-17-data-publication-1/`
- Matrix collaboration: `https://matrix.to/#/%23openwashdata-lobby:staffchat.ethz.ch`

## Project Management with GitHub CLI

- Create branches from `dev`. Do not push to `main`
- List issues: `gh issue list`
- View issue details: `gh issue view 80` (e.g., for issue #80 "Rename geographies parameter")
- Create branch for issue: `gh issue develop 80`
- Checkout branch: `git checkout 80-rename-geographies-parameter-to-entities`
- Create pull request: `gh pr create --title "Rename geographies parameter to entities" --body "Implements #80"`
- List pull requests: `gh pr list`
- View pull request: `gh pr view PR_NUMBER`
