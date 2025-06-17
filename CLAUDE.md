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

## Key Links Template
- Chatroom: `https://openwashdata.org/pages/get-started/chat/`
- Data sharing guide: `https://openwashdata.org/pages/blog/posts/2024-05-17-data-publication-1/`
- Matrix collaboration: `https://matrix.to/#/%23openwashdata-lobby:staffchat.ethz.ch`