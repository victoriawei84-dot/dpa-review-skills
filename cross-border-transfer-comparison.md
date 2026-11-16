# GDPR vs. PIPL: Cross-Border Data Transfer & Processing-Agreement Comparison

**Original analysis.** Written to answer a practical question that comes up constantly for any company with both EU and China data flows: *if I already have a GDPR-compliant DPA with my vendor, what else do I need for the China side of the same relationship — and where will the two frameworks actually conflict rather than just differ in paperwork?*

This draws on two files in [`reference/`](reference): the GDPR requirements (section author: LegalQuants, adapted unmodified from [LegalQuants/lq-ai](https://github.com/LegalQuants/lq-ai), Apache 2.0 — see [`NOTICE`](NOTICE)) and the PIPL requirements (section author: Victoria Wei, original research — sourced as cited in that file). Everywhere this document states what GDPR or a comparable Western regime (e.g., CCPA) requires, that factual content traces back to the LegalQuants-authored reference file; everywhere it states what PIPL requires, that traces back to the original PIPL research below it. The side-by-side comparison, the judgment calls about where the two regimes actually conflict, and the migration checklist in §5 are original analysis by Victoria Wei.

## 1. The core conceptual mismatch: two different "who's regulated" models

GDPR's controller/processor split is a functional test — whoever determines the purposes and means of processing is the controller, regardless of label. PIPL has an analogous handler/entrusted-party split (Article 21) for processing-on-behalf-of relationships, **but it also has a second, separate category** — "provision to a third party" (Article 23) — for when data moves to someone who will use it for their own purposes. GDPR doesn't need a separate named category for this; it just asks whether the recipient is a new, independent controller and handles it as a disclosure/legal-basis question.

**Practical consequence for a DPA reviewer:** a single commercial relationship that looks like one GDPR "processor" relationship can require you to ask a question PIPL forces explicitly but GDPR doesn't: *is this entrustment, or is it actually a third-party provision wearing a processor agreement's clothing?* If a vendor will use the data for anything beyond the handler's instructed purpose — including common cases like using aggregated customer data to improve the vendor's own product across its customer base — PIPL treats this as Article 23, not Article 21, and requires a standalone consent event no GDPR-style "incorporated by reference into the privacy policy" language will satisfy. A DPA that was drafted purely against GDPR Article 28 and then relabeled for a China counterparty will often paper over this distinction, because GDPR gave the drafter no reason to think about it.

## 2. Processor/entrusted-party contract terms, side by side

| Requirement | GDPR Art. 28(3) | PIPL Art. 21 | Practical gap when migrating a GDPR DPA to PIPL |
|---|---|---|---|
| Written contract required | Yes | Yes | None — both require it. |
| Process only on documented instructions | Explicit, (a) | Implied by "agreed purpose and method," not stated as an instruction-following duty in the same terms | Low risk — most DPAs already draft this broadly enough to cover both. |
| Confidentiality of personnel | Explicit, (b) | Not separately enumerated in Art. 21 (covered generally by PIPL's broader confidentiality/security expectations) | Low risk — most vendor DPAs include this regardless of which regime drove the drafting. |
| Security measures | Explicit, tied to Art. 32 risk-based standard | Tied to Art. 51 — adds an explicit **tiered/classified management** expectation (安全分类分级) not present in Art. 32's language | **Real gap.** A GDPR Art. 32 annex (encryption, access control, resilience) usually doesn't demonstrate classified/tiered data handling. Worth adding a short classification-scheme clause rather than assuming the GDPR annex covers it. |
| Sub-processing | General authorization + notice/objection window is compliant | Text reads as requiring the handler's **prior consent**, not merely notice | **Real gap, easy to miss.** A GDPR-standard "we'll notify you and you have 30 days to object" sub-processor clause is a common-practice compliant pattern under Art. 28(3)(d) but is a plausible point of non-compliance under PIPL's stricter consent language. Flag for negotiation rather than assuming equivalence. |
| Return/deletion at termination, controller's/handler's choice | Explicit | Explicit, same structure | None — this is one of the cleanest 1:1 mappings between the two regimes. |
| Data subject/individual rights assistance | Explicit, detailed (access, erasure, portability, etc.) | Not detailed at the Art. 21 contract level — individual rights obligations sit elsewhere in PIPL (Arts. 44–50) and are less often spelled out as processor-contract terms in PRC market practice | **Real gap** if the DPA relies entirely on the GDPR-style Art. 28(3)(e) clause to also stand in for PIPL rights-assistance expectations — recommend an explicit PIPL-flavored rights-assistance clause rather than assuming the GDPR clause's breadth translates. |
| Breach/incident notification obligations | Explicit, tied to controller's 72-hour Art. 33 deadline | Not detailed at Art. 21 level (sits in Art. 57, a handler-level duty, not spelled out as a processor-contract term) — see §4 below for the substantive gap in the underlying obligation itself | Flow down a PIPL-specific breach clause separately; don't assume the GDPR 72-hour clause satisfies it (see §4). |
| Audit rights | Explicit, (h) | Not enumerated in Art. 21 | PIPL doesn't give the handler a statutory audit-rights floor the way GDPR does — if audit rights matter to the business, they need to be independently negotiated, not assumed to follow from PIPL the way they follow from GDPR. |

**Bottom line for §2:** the GDPR Art. 28 checklist and the PIPL Art. 21 checklist overlap on *subject matter, duration, security, and return/deletion* almost exactly. They diverge meaningfully on *sub-processing consent, data-subject-rights flow-down, audit rights, and the classified/tiered security expectation.* A dual-regime DPA should not assume that satisfying Art. 28(3) in full automatically satisfies Art. 21 — the divergent items above need their own clauses.

## 3. Cross-border transfer mechanism — the real structural divide

This is where the two regimes stop rhyming and start requiring genuinely different paperwork.

| | GDPR (Art. 44–49) | PIPL (Art. 38, CAC measures) |
|---|---|---|
| Default rule | Transfer prohibited absent a lawful mechanism | Same in structure |
| Primary mechanism | Standard Contractual Clauses (SCCs) — **freely executed between the parties** | Standard Contract — **mandatory CAC template**, supplementary clauses cannot conflict with it |
| Regulator involvement | None required for most SCC transfers (no filing, no approval) | **Mandatory filing with the provincial CAC within 10 working days**, plus a personal-information-protection impact self-assessment report filed alongside it |
| Governing law of the transfer mechanism | Parties' choice (commonly an EU member state's law) | **PRC law is mandated by the template**; overseas recipient must accept PRC jurisdiction |
| Volume-based escalation | Not volume-gated — same SCCs apply regardless of how many data subjects are covered | **Explicitly volume-gated**: full government security assessment required above ~1,000,000 individuals (or >10,000 sensitive-data individuals, or "important data"); Standard Contract/certification for the 100,000–1,000,000 band; likely exempt below 100,000 |
| Supplementary measures after a landmark CJEU/equivalent ruling | Schrems II requires a Transfer Impact Assessment (TIA) assessing destination-country surveillance law, plus supplementary technical measures where needed | No direct PIPL analog to a TIA as a named, separate artifact — the impact self-assessment filed with the Standard Contract serves a partially overlapping function, but is not framed around assessing the destination country's own surveillance regime the way a GDPR TIA is |
| Who can use the "SCC-equivalent" route | Available to essentially any exporter, any volume | **Not available to CIIOs or to exporters already past the security-assessment thresholds** — for those, the Standard Contract route is foreclosed entirely and a government security assessment is mandatory |

**The single most consequential practical difference:** GDPR's SCC route is self-executing — sign it, keep it on file, no government involvement needed before you can rely on it. PIPL's Standard Contract route is a **filing regime** — the contract isn't just signed, it's submitted to a provincial government office within a hard deadline, alongside a self-assessment report, and the whole route is unavailable above certain volumes regardless of what the parties would prefer. A DPA reviewer trained only on GDPR will instinctively treat "we executed SCCs" as the finish line. Under PIPL, executing the Standard Contract is the *start* of a compliance obligation (the filing), not the end of one — and it's worth checking, in any PIPL-side review, whether the filing actually happened, not just whether the contract exists.

## 4. Impact assessments and breach notification: PIPL is more mechanically triggered, less risk-gated

Two related differences, both pointing the same direction: PIPL's defaults assume action is required more often, and rely less on a "likely high risk" judgment call than GDPR does.

- **DPIA vs. PIA trigger:** GDPR requires a DPIA when processing is "likely to result in a high risk" — a judgment call, assessed case by case. PIPL requires a PIA (Art. 55) essentially automatically whenever sensitive personal information is processed, automated decision-making is used, data is entrusted/provided to a third party/disclosed, **or data crosses the border** — no separate "is this actually high-risk" gate for those categories. In practice, this means a PIA is required far more often under PIPL than a DPIA is under GDPR for structurally similar processing, because PIPL doesn't ask the risk-level question for these trigger categories — it just asks whether the trigger occurred.
- **Breach notification trigger:** GDPR gates authority notification on "unless unlikely to result in a risk" and individual notification on a higher "high risk" bar — both within 72 hours. PIPL's Art. 57 default is to notify *both* the regulator and individuals, immediately, with only a narrow carve-out (demonstrable, effective harm-avoidance measures) that excuses individual notification specifically — and even that carve-out is subject to regulator override.

**Reviewer takeaway:** a DPA (or an internal compliance program) built to GDPR's risk-gated defaults will under-notify and under-assess relative to what PIPL expects by default. The safe drafting posture for a dual-regime agreement is to build to PIPL's more mechanical, less discretionary trigger conditions, and treat GDPR's risk-based gating as the more permissive case rather than the baseline.

## 5. A practical migration checklist: GDPR DPA → add PIPL coverage

For a reviewer handed a DPA that was drafted to satisfy GDPR Article 28 and asked "does this also work for our China counterparty," check for these five things specifically — they are the points where equivalence cannot be assumed:

1. **Does the sub-processing clause require the handler's prior consent**, or only notice-and-objection? If only the latter, flag as a PIPL Art. 21 gap even though it's GDPR-compliant.
2. **Is there a classified/tiered data-handling commitment** in the security annex, not just encryption/access-control language? If not, flag as a likely PIPL Art. 51 gap.
3. **Is there a cross-border transfer mechanism addressed at all**, and if a Standard Contract is referenced, **is there confirmation it was actually filed** with the provincial CAC within the 10-working-day window, alongside the required self-assessment report? "We signed SCCs" is not sufficient evidence for the PIPL side the way it would be for GDPR.
4. **Is there a PIA (not just a GDPR DPIA) on file** covering the entrustment/cross-border-transfer trigger specifically? A GDPR DPIA conducted for a different reason doesn't automatically satisfy Art. 56's content requirements.
5. **Does the breach-notification clause actually deliver "immediate" dual notification** (regulator + individuals) as the default, or does it quietly rely on the GDPR 72-hour/risk-gated structure? If the latter, it is likely under-protective for the PIPL side of the relationship.

## What this analysis does not do

This is a drafting-review aid synthesizing two complex, fast-moving legal regimes at the level of a DPA reviewer's practical checklist — it is not PRC or EU legal advice, does not cover sector-specific overlays (financial services, healthcare, "important data" catalogs), and does not account for enforcement practice, which moves faster than statutory text in both jurisdictions. Verify current requirements with qualified counsel in both jurisdictions before relying on this for a real transaction.
