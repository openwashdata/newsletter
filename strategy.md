# Newsletter strategy (Phase 2)

Phase 1 (2023 to 2024) informed the early community about the project and
its goals. Phase 2 starts with the return to monthly issues in October
2026. The goal of Phase 2 is to reach more people. A newsletter on its own
keeps the readers it already has, so we build each issue around one piece
of content that readers and the team can share outside the inbox.

## Goal and measures

Pick one target and write it here before the October issue, e.g., a
subscriber count to reach by August 2027.

Track three measures.

- Subscriber count, opens, clicks, and unsubscribes in Buttondown after
  each issue.
- Visits to openwashdata.org that arrive from newsletter links, in
  Plausible.
- Poll answers per issue.

Two setup tasks come first. Transfer Plausible from the personal account
to the organization. Confirm what Buttondown reports about forwards and
new subscribers.

## Objectives

The Phase 1 objectives stay.

- Highlight project milestones.
- Demonstrate open science practice.
- Get more participants.

Phase 2 adds one objective. We post one artifact from every issue outside
the newsletter.

## Content

The section outline from Phase 1 stays, because issues 1 to 22 followed
it and it works.

1. Greeting paragraph.
2. Two or three highlight sections.
3. One blog post.
4. Contributor of the month.
5. Get involved, with the standing footer from get-involved-content.md.

Phase 2 adds three elements.

### Dataset of the month card

Each issue shows one chart made from the data of a featured package. We
generate the chart with an R chunk in the issue .qmd, together with the
number of observations, the countries covered, the license, and a link to
the package site. Build the chunk once as a template so that preparing
the card takes 30 minutes or less per issue. Every chart carries alt
text. We post the same chart to the LinkedIn sub-group and the website in
the week the issue goes out.

### One question per issue

Each issue asks one question as a Buttondown poll that readers answer
with one click inside the email. The poll is in the body of the issue,
not in the footer. The next issue reports the answers in one or two
lines, so readers see that answering has an effect.

The per-issue question does not use surveydown. A surveydown survey is an
app that runs outside the email, so readers have to click out, wait for
the page, and submit. Fewer readers answer with each added step, and a
single question does not justify the steps.

### Annual community survey

Once a year, one issue links to a community survey built with
surveydown. The survey holds the questions that do not fit a one-click
poll, e.g., who the readers are and what they want from openwashdata. We
store the responses in a database, publish them as an openwashdata data
package, and show them as the dataset of the month card in a later
issue.

## Distribution

We publish the content of each issue in three channels.

- The email itself, sent through Buttondown.
- The LinkedIn sub-group on the Global Health Engineering page, which
  gets the chart and one finding from the issue.
- The website, which gets the chart and the blog post.

The course is the strongest known source of new readers. The first
ds4owd course brought over 200 registrations from more than 80
countries. Every course registration form and course website links to
the newsletter sign-up page.

## Cadence and production

Issues go out monthly on the first Monday, starting 2026-10-05. We did
not hold the monthly cadence in 2025, and issue 18 followed a four month
gap. Sending a short issue on time beats sending a long issue late, so a
thin month still gets an issue with a greeting, one highlight, the card,
and the question.

The production budget is four hours per issue, not counting the blog
post. The monthly cycle is:

- Week 1: send the issue, post the chart to LinkedIn and the website,
  archive the previous issue.
- Week 2 and 3: read the poll answers, collect highlights for the next
  issue.
- Week 4: draft and review the next issue.

## Design

Formatting follows Buttondown. Fonts use Atkinson Hyperlegible where
Buttondown allows it. Charts use the openwashdata colors.

## Analytics

Review the Buttondown numbers after each issue. Review the Phase 2 goal
every three months, in the first week of January, April, July, and
October.
