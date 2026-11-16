# DPA / Cross-Border Data Transfer Review

Practical reference material and original analysis on reviewing **Data Processing Agreements (DPAs)** and cross-border personal-data-transfer mechanisms under **EU/UK GDPR** and **China's PIPL**.

## Original analysis (authored for this repository)

- **[`original/pipl_requirements.md`](original/pipl_requirements.md)** — a clause-by-clause checklist for PIPL Article 21 entrusted-processing agreements and the Article 38 cross-border transfer mechanisms (security assessment / Standard Contract / certification), written in the same reviewable-checklist format as the GDPR reference below, with severity calibration and full source citations.
- **[`original/gdpr-vs-pipl-cross-border-transfer.md`](original/gdpr-vs-pipl-cross-border-transfer.md)** — a comparative analysis: where GDPR Art. 28 and PIPL Art. 21 processor-agreement terms actually line up vs. diverge, how the two cross-border transfer regimes differ structurally (self-executing SCCs vs. mandatory CAC filing), why PIPL's PIA and breach-notification triggers are more mechanical and less risk-gated than GDPR's, and a 5-point practical checklist for upgrading a GDPR-only DPA to also cover a PIPL-regulated counterparty.

These two files are my own research and writing, researched using the sources cited at the end of each file. They are not from any third-party source.

## Reference material (adapted from an open-source project, not original)

**[`reference/`](reference)**, **[`examples/`](examples)**, **[`acceptance/`](acceptance)**, **[`SKILL.md`](SKILL.md)**, and **[`test-plan.md`](test-plan.md)** are reproduced from the `dpa-checklist-review` skill in [LegalQuants/lq-ai](https://github.com/LegalQuants/lq-ai), an open-source (Apache 2.0) legal-AI project — kept here as background reference because the PIPL analysis above was written to sit alongside it (same checklist format, and the GDPR requirements file is what the comparison in `original/` is measured against). **I did not write this material** — see [`NOTICE`](NOTICE) for full attribution, required under the Apache 2.0 license. It covers GDPR Article 28, US state privacy law (CCPA/CPRA, VCDPA, etc.), and HIPAA BAAs, plus worked examples and test fixtures.

