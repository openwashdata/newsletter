# Newsletter Strategy (Phase 2): Engagement & Growth to 1,000

Goal: grow the newsletter to 1,000 subscribers within 12 months and
make each issue something readers act on (reply, click, share, submit),
not just read.

This strategy replaces the Phase 1 focus ("inform the community about
our infrastructure") with a reader-first focus: every issue must help a
WASH professional do something with data.

## 1. Where we are: audit of issues 1-21

Findings from reviewing every published issue (2023-08 to 2026-03):

### What works

- The course is the strongest asset. ds4owd-001 drew 200+
  registrations from 80+ countries; the special issue (#19) promoting
  ds4owd-002 was the only issue written entirely around reader benefit,
  and it is the best issue in the archive.
- Events create spikes. The PLOS webinar (39 participants), two
  hackathons, SWWW and UNC sessions all generated content and contact
  with new people.
- Contributor of the Month is a genuine differentiator. It puts
  community members' names, faces, and links in front of peers.
- Credibility markers exist: 29+ published datasets, CRAN package
  (`washr`), Swiss National ORD Prize 2024, ETH backing, partnerships
  with WASHWeb, SOIL, PLOS, and BASEFlow Malawi.

### What is broken

1. Cadence collapsed. Monthly held until mid-2024, then: issue 18
  opens with "It's been more than four months since our last
  newsletter", issue 20 is Sept 2025, issue 21 is March 2026. A list
  that hears from you 3-4 times a year cannot compound growth, and
  irregular sending trains readers to ignore or unsubscribe.
2. Content is producer-centric. Most issues are "we released X, we
  attended Y, we hired Z". Dataset announcements are lists of package
  names with no chart, no finding, no reason for a non-R-user to care.
3. Zero interaction mechanisms shipped. The Phase 1 plan included a
  footer poll ("What's your favorite section?"). It was never
  implemented. No issue asks a question, invites a reply, or offers
  anything to click other than outbound links.
4. Quality control is missing. Shipped errors include: issue 4 swaps
  the `waterpumpkwale` and `grdwtrsmpkwale` URLs; issue 13 links
  `portawaterperu` to the saniabidjan site; issue 14's headline says
  "Three new datasets... Uganda, Malawi, Brazil, Cote d'Ivoire, Peru"
  above two datasets from Ghana and a global source, and links
  `whatawaste` to the waschoolpiracema site; issue 17 has two dangling
  sentences ("apply:" and "accessible here:" with no link).
5. No measurement loop. Analytics were "TODO" in Phase 1 and remain
  unreviewed. We do not know our open rate, click rate, or list size
  trend, so nothing gets tested or improved.

## 2. Goals and targets

Baseline: pull the current subscriber count, open rate, and click rate
from Buttondown in week 1 and record them in this file. Targets below
assume a starting list of roughly 200-400.

| Metric                    | Now       | +6 months | +12 months |
|---------------------------|-----------|-----------|------------|
| Subscribers               | (record)  | 550       | 1,000      |
| Issues sent on schedule   | 3-4/year  | 6/6       | 12/12      |
| Open rate                 | (record)  | 45%       | 50%        |
| Click rate                | (record)  | 8%        | 12%        |
| Replies + poll votes      | ~0/issue  | 10/issue  | 25/issue   |
| Reader submissions        | 0         | 1/issue   | 2/issue    |

Net growth needed: ~600-800 subscribers, i.e. ~55-65/month average.
This is not achievable through organic forwarding alone; it requires
the acquisition channels in section 5, with the course as the anchor.

## 3. Positioning: who is the reader

Write for the WASH professional or student who works with data but is
not (yet) part of our community: an M&E officer at an NGO, a
researcher, a utility analyst, a course alumnus. They ask:

- "Is there data I can use for my region/topic?"
- "How do I do this analysis / make this map / share my data?"
- "What are peers doing that I can learn from?"

Editorial test for every section: does this answer one of those three
questions? Team news, funding updates, and internal milestones may
appear, but never lead, and never fill an issue.

## 4. Content system

Fixed monthly skeleton. Short beats late: a 3-section issue on
schedule beats a 6-section issue two months later.

1. One finding, one chart (lead section). Take ONE dataset (new or
  from the back catalogue of 29+) and show a single finding with one
  visualization and 3-4 sentences of interpretation. Link to the
  package and to a short "how this chart was made" post. This turns
  dataset announcements from lists into stories, and the back
  catalogue means content never depends on new releases.
2. New releases (compact). Bullet list of new packages, one line
  each, links verified. No release this month? Skip the section.
3. Practical tip. One task-oriented snippet: a map recipe, a data
  dictionary trick, an AI-assisted cleaning workflow, a `fairenough`
  or `washr` feature. Reuse and repackage course material — it is
  already written and proven to attract this audience.
4. Community corner (interaction hub, see section 5). Contributor of
  the Month, reader showcase, poll results from last issue, this
  issue's question.
5. Get involved (footer). Keep the current compact version.

Recurring annual content: course launch special (the #19 format,
proven), hackathon showcase, end-of-year wrap-up with community stats,
graduate capstone showcases.

Writing rules: per CLAUDE.md (no "thrilled/excited/remarkable", plain
factual language). Subject lines state the concrete payoff ("How water
costs vary across Accra households"), not "Newsletter #22". Preview
text is written, not left to default.

## 5. Interaction plan

Every issue must contain exactly one primary question and one reply
invitation. More than that dilutes response.

- Poll in every footer. Buttondown supports click-tracking links;
  a 3-option poll ("Which section was most useful?") costs one click.
  Publish results in the next issue so voters see their input used.
- Monthly question. One concrete question in the community corner,
  e.g. "What dataset do you wish existed?" or "What's blocking you
  from sharing your data?". Answers via reply. Best answers quoted
  (with permission) in the next issue.
- Reader showcase. Standing call: "Made something with openwashdata
  packages? Reply with a link." Feature one per issue with name,
  chart, and links — same mechanic as Contributor of the Month, but
  open to any reader, which gives every subscriber a path to being
  featured.
- Reply-to is a monitored human mailbox, and every reply gets a
  personal answer within a week. Nothing kills interaction faster
  than replies going into a void.
- Data challenge (quarterly). Small task on one dataset ("make one
  chart from `washmalawi`"), submissions via reply or chat, winners
  featured. This is the hackathon mechanic, made remote and async.
- Annual reader survey (5 questions max), results published.

Interaction is also a retention lever: people who have replied, voted,
or been featured do not unsubscribe.

## 6. Growth plan: where 600-800 subscribers come from

Ranked by expected yield:

1. Course pipeline (~300-400). Add a newsletter opt-in checkbox to
  every ds4owd registration form, opt-in at certificate delivery, and
  a sign-up link in course materials and lecture closings. Cohort
  registration volumes (200-300+) make this the single largest
  channel. Run one cohort launch special issue per cohort (the #19
  format) and ask registrants to forward it.
2. Dataset package websites (~100-150). 29+ package sites are our
  SEO surface — people find `gdho` or `glaas` via search. Add a
  one-line subscribe link to the `washr`/`fairenough` website
  template footer so every current and future package page carries
  it. Same for the openwashdata.org blog, data gallery, and archive.
3. Events (~50-100). Every webinar, hackathon, SWWW/UNC session ends
  with one slide: QR code to subscribe. Follow up with attendee lists
  where consent allows. Target 3-4 such events in 12 months —
  webinars are the cheapest to run and drew 39 sign-ups with minimal
  promotion last time.
4. Partner cross-promotion (~50-100). WASHWeb, SOIL, BASEFlow, PLOS,
  and GHE/ETH channels each mention the newsletter once or twice a
  year (newsletter swap, blog mention, or social post). One
  coordinated ask per partner, reciprocated.
5. Referrals (~50). "Forward this email" is currently a dead line in
  the footer. Make it an explicit campaign twice a year: "Know one
  colleague who works with WASH data? Forward this issue." Buttondown
  subscriber counts by referral source tell us if it works.
6. Team social (~50). Each issue gets one LinkedIn post from the team
  highlighting the lead finding (the chart travels well), linking to
  the web archive version with a subscribe CTA.

Every channel must land on a single canonical sign-up page with a
one-sentence value proposition and a recent issue preview.

## 7. Cadence and workflow

- Monthly, first Monday, 12 issues in 12 months, no skips. If a month
  is thin, send the short version (lead finding + community corner +
  footer). The special issue (#19) proves short works.
- The monthly cycle from Phase 1 stays, with one change: Week 2 now
  includes a 30-minute metrics review (section 8) and logging replies
  and poll results for the next issue.
- Ownership: name one editor per issue (rotating is fine) who is
  accountable for the send date. The 4-6 month gaps happened because
  the newsletter was everyone's job and no one's deadline.
- Draft in `.qmd` with R chunks for package metadata (current
  practice, keep), render to `.md`, archive after send.

## 8. Quality checklist (before every send)

- [ ] Every link opened and verified (issues 4, 13, 14 shipped wrong
      package URLs; this is a recurring failure mode)
- [ ] Package names match their URLs
- [ ] Headline counts/countries match the section content
- [ ] No placeholder text or dangling sentences (issue 17 shipped two)
- [ ] One question + one poll present, reply-to verified
- [ ] Subject line and preview text written
- [ ] Test send read on mobile
- [ ] Alt text on images

## 9. Measurement

Monthly (Week 2, 30 minutes, log in this repo):

- Subscriber count, net growth, growth by source
- Open rate, click rate, top 3 clicked links
- Replies and poll votes received
- One decision recorded: what to change next issue

Quarterly: review against the section 2 table. If growth is under 50%
of target for two consecutive quarters, the course pipeline (channel
1) is underperforming and needs direct attention first — it is the
only channel large enough to close the gap.

Tools: Buttondown analytics (already available), Plausible for
openwashdata.org referral tracking, UTM parameters on all newsletter
links so we can see what newsletter traffic does on the site.

## 10. 12-month roadmap

- Month 1: Record baseline metrics. Set up canonical sign-up page,
  poll links, QA checklist. Resume monthly sending with the new
  skeleton. Add opt-in to course forms.
- Month 2: Add subscribe links to package site template and blog.
  First poll results published. First LinkedIn post per issue.
- Month 3: First quarterly data challenge. Partner cross-promotion
  ask #1 (WASHWeb).
- Months 4-6: First referral campaign. One webinar with subscribe
  CTA. Quarterly review #1.
- Months 7-9: Course cohort launch special + registration opt-in
  harvest. Second data challenge. Partner asks #2-3 (SOIL, BASEFlow,
  PLOS). Quarterly review #2.
- Months 10-12: Reader survey. Second referral campaign. Second
  webinar or hackathon showcase. End-of-year wrap-up issue with
  community stats. Final review against 1,000 target.
