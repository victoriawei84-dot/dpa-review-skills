# DPA Review Guide — GDPR, US State Privacy, HIPAA & PIPL

A practical, checklist-driven guide to reviewing Data Processing Agreements (DPAs), DPA addenda, and HIPAA Business Associate Agreements against four regulatory regimes, plus a dedicated comparison of GDPR and China's PIPL for cross-border data flows — the regime combination that comes up constantly for any company operating in both markets.

## Start here

- **[`SKILL.md`](SKILL.md)** — the review methodology: a three-pass process (document orientation → regime-specific term checking → compile checklist and posture) used consistently across every regime below.
- **[`reference/`](reference)** — the regime-by-regime requirement checklists. Read the one(s) relevant to your deal:
  - [`gdpr_requirements.md`](reference/gdpr_requirements.md) — EU/UK GDPR Article 28.
  - [`us_state_privacy_requirements.md`](reference/us_state_privacy_requirements.md) — CCPA/CPRA, VCDPA, CPA, CTDPA, and similar.
  - [`hipaa_baa_requirements.md`](reference/hipaa_baa_requirements.md) — HIPAA Business Associate Agreements.
  - [`general_commercial_requirements.md`](reference/general_commercial_requirements.md) — regime-neutral commercial DPA terms.
  - [`pipl_requirements.md`](reference/pipl_requirements.md) — China's PIPL: Article 21 entrusted-processing agreements and the Article 38 cross-border transfer mechanisms (security assessment / Standard Contract / certification).
- **[`cross-border-transfer-comparison.md`](cross-border-transfer-comparison.md)** — GDPR vs. PIPL side by side: where the two regimes' processor-agreement terms actually line up vs. diverge, why their cross-border transfer mechanisms differ structurally, why PIPL's impact-assessment and breach-notification triggers are more mechanical and less risk-gated than GDPR's, and a 5-point checklist for upgrading a GDPR-only DPA to also cover a PIPL-regulated counterparty.
- **[`examples/`](examples)** — fully worked review examples (GDPR, US state privacy).
- **[`acceptance/`](acceptance)** — sample DPA/BAA text fixtures with "golden" expected-output checklists, useful for testing your own review against a known answer.
- **[`test-plan.md`](test-plan.md)** — the acceptance-test scenarios this checklist methodology was validated against.

## Authorship

This guide combines two things: a review methodology and a set of regime checklists originally built by [LegalQuants](https://github.com/LegalQuants/lq-ai) for their open-source (Apache 2.0) legal-AI platform, and original PIPL research plus a comparative GDPR/PIPL analysis that I wrote to extend it — the upstream project explicitly scopes PIPL out of its initial release.

Rather than keep these in separate folders, each file states its own authorship inline, right after its title, so it reads as one continuous guide:

- `reference/gdpr_requirements.md`, `reference/us_state_privacy_requirements.md`, `reference/hipaa_baa_requirements.md`, `reference/general_commercial_requirements.md`, `SKILL.md`, `examples/`, `acceptance/`, `test-plan.md` — **written by LegalQuants**, reproduced unmodified under Apache 2.0. See [`NOTICE`](NOTICE).
- `reference/pipl_requirements.md` and `cross-border-transfer-comparison.md` — **written by me (Victoria Wei)**, original research; sources cited at the end of each file.

I did this specifically because the gap was real and named: LegalQuants' `SKILL.md` lists PIPL as explicitly out of scope for v1.0.0 ("Cover non-US/non-EU regimes ... community contributions welcomed"). The PIPL and comparative files here are my attempt at exactly that contribution.
