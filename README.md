# DPA / Cross-Border Data Transfer Review

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

## How to use this

This is written to be worked through against a real document, not just read end to end.

1. **Figure out which regime(s) actually govern the document in front of you.** Don't guess from the document's title or governing-law clause — a "Data Processing Addendum" with Delaware governing law can still be GDPR-driven if it processes EU resident data, CCPA-driven if it processes California resident data, PIPL-driven if it processes data collected in mainland China, or several of these at once. Identify the data categories and data subjects first, then pick the regime file(s) in `reference/` that apply. If you're reviewing a dual EU/China relationship, also open `cross-border-transfer-comparison.md`.

2. **Follow the three-pass method in [`SKILL.md`](SKILL.md)** against the actual document: orient (confirm it's really a DPA/BAA, identify the parties' roles), walk the relevant `reference/` checklist clause by clause (Present / Partial / Missing / Unclear / N/A for each required term), then compile an overall posture (Compliant / Compliant with minor gaps / Non-compliant / Materially non-compliant).

3. **Use the severity-calibration section at the end of each `reference/` file** to decide what's Critical vs. Material vs. Minor, rather than inventing your own scale — the calibration is regime-specific (e.g., what counts as critical under GDPR Art. 28 isn't identical to what counts as critical under PIPL Art. 21).

4. **Check your read against a worked example first** — skim [`examples/example_gdpr.md`](examples/example_gdpr.md) or [`examples/example_us_state.md`](examples/example_us_state.md) to see the expected level of detail and the output format before you write your own.

5. **Test yourself against the acceptance fixtures** in [`acceptance/`](acceptance): read a fixture under `acceptance/fixtures/`, write your own checklist assessment, then compare it against the matching `acceptance/snapshots/*.golden.json`. This is the fastest way to calibrate your own judgment against a known-good answer before relying on it for a real document.

6. **If the deal spans GDPR and PIPL**, don't assume a GDPR-compliant DPA is automatically PIPL-compliant (or vice versa) — go through the 5-point migration checklist at the end of `cross-border-transfer-comparison.md` §5, which is written specifically to catch the points where the two regimes diverge (sub-processing consent, security classification, cross-border filing, PIA triggers, breach notification).

This is drafting/review support, not a substitute for qualified counsel — see each file's "what this does not do" section before relying on it for an actual transaction.

## Authorship

This guide combines two things: a review methodology and a set of regime checklists originally built by [LegalQuants](https://github.com/LegalQuants/lq-ai) for their open-source (Apache 2.0) legal-AI platform, and original PIPL research plus a comparative GDPR/PIPL analysis that I wrote to extend it — the upstream project explicitly scopes PIPL out of its initial release.

Rather than keep these in separate folders, each file states its own authorship inline, right after its title, so it reads as one continuous guide:

- `reference/gdpr_requirements.md`, `reference/us_state_privacy_requirements.md`, `reference/hipaa_baa_requirements.md`, `reference/general_commercial_requirements.md`, `SKILL.md`, `examples/`, `acceptance/`, `test-plan.md` — **written by LegalQuants**, reproduced unmodified under Apache 2.0. See [`NOTICE`](NOTICE).
- `reference/pipl_requirements.md` and `cross-border-transfer-comparison.md` — **written by me (Victoria Wei)**, original research; sources cited at the end of each file.

I did this specifically because the gap was real and named: LegalQuants' `SKILL.md` lists PIPL as explicitly out of scope for v1.0.0 ("Cover non-US/non-EU regimes ... community contributions welcomed"). The PIPL and comparative files here are my attempt at exactly that contribution.
