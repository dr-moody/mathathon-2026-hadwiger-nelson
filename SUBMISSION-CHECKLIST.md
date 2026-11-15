# Submission audit

Verified against official rules revision `4d6098d263275ff1cb0308908a693e776c116f53`, 15 November 2026. The report is the record reviewed by the LLM panel; supplements support it.

| Requirement / check | Status |
| --- | --- |
| New isolated GitHub repository | Created under `dr-moody`; made public with explicit author approval |
| Problem and track stated | Problem 33; Combinatorics, the official proposed track. Platform selection remains the human team's responsibility. |
| One self-contained `.tex` and its compiled PDF | PASS: `report.tex` + `report.pdf`, 28 pages, compiled and visually checked |
| Identity / affiliations / repository link only in report title block | Jarom Moody is the supplied identity; no affiliation is invented |
| Report distinguishes inherited results, event work, evidence, and limitations | PASS: status labels, timestamp scope, historical environment, and limitations explicit |
| AI tools and how outputs were checked disclosed | Existing report includes the documented tool roles and checks |
| Sources and assistance credited | Existing references retained; upstream Apache license included |
| Key figures explained in text | Existing report contains figure explanations; new deck must be matched against report |
| Slides exported as PDF | PASS: `slides.pdf`, 49 pages at 16:9, numerically ordered from reviewed native renders, Jarom Moody metadata; selected proof/cone pages rendered and checked |
| Every slide result covered in report | PASS: final 49-slide content and notes audited against report; see DECK-COVERAGE.md |
| Presentation at most 20 minutes; Q&A up to 10 minutes | A suggested 20-minute route is included in speaker-notes.txt; the remaining teaching/reference slides are for study and questions |
| Every repository link has a full source revision in title block | Source revision `23357553beb0d4998bebb4342157ea4f05bd1792` printed in title block; final packaging revision reported separately (see README convention) |
| Repositories accessible to organizers at deadline | PASS: public visibility and anonymous read access verified |
| Historical Lean status accurately limited to 4.34.1 | Explicit throughout report and README |
| Optional project on Lean/mathlib v4.35.0, fixed other dependencies | PASS for `lean/` logical core: Lean 4.35.0, mathlib v4.35.0 pinned but unused, fixed transitive manifest |
| Claimed optional Lean results build with permitted axioms and unchanged official statement where applicable | PASS for one counting-core declaration only: build exit 0, empty axioms, explicit hypotheses. No claim of formalizing the official global theorem. Analytic migration was not completed; its first module hit Mathlib API changes. |
| Lean declaration/claim differences named | Tables in report; §3.8 distinguishes exact-one-label predicate statement from paper's at-most-one generality and explains analytic hypotheses |
| Full final submission commit recorded | Final artifact commit is supplied with the handoff; PACKAGE-MANIFEST.json records artifact hashes. Use the full containing commit returned by `git rev-parse HEAD`. |
| Submitted on platform before noon Pacific | NOT DONE; repository preparation is not submission |

Historical source and evidence hashes were recomputed during packaging. All 217 distinct ledger-referenced artifacts were available and matched their recorded hashes. This is a provenance check, not a fresh Lean build or independent mathematical verification.

No raw conversations, model runtime traces, secrets, build caches, or unrelated project files are included. Compiler/audit logs directly supporting report claims are included deliberately.
