# CivicPulse 2.0 — Report. Verify. Resolve.

**Team:** Syntax Sorcerers  
**Hackathon track:** Track 5 — Smarter Cities and Civic Infrastructure  
**Selected problem:** Real-Time Civic Issue Reporting & Resolution Tracking

## 1. The problem

Residents encounter potholes, overflowing garbage, broken streetlights, blocked drains and water-supply problems. Reporting channels can be fragmented, repeat complaints may be difficult to consolidate, and residents may not be able to see what happened after reporting. Municipal/ward teams need a clearer way to see which issues are urgent and keep a visible progress record.

## 2. The solution

CivicPulse is a lightweight, mobile-friendly web prototype connecting four steps:

1. **Report:** A resident submits an issue with a category, description, area/landmark, severity and optional GPS coordinates/photo.
2. **Group and verify:** A new report is compared with unresolved reports of the same category. When GPS coordinates are present, the app groups reports within 150 metres. Without GPS, it uses an exact normalized location match. Residents can confirm an issue once per browser profile.
3. **Prioritize:** Each issue receives a transparent priority score: severity points (Low 10, Medium 20, High 30, Critical 40) + up to 30 community-confirmation points (3 per confirmation, capped at 10 confirmations). This is a demo prioritization aid, not an official risk assessment.
4. **Track:** A ward-officer demo view can update the status. Each change is added to a visible timeline. Residents can view status history and tracking IDs.

## 3. Main features

- Responsive citizen dashboard and issue-report form.
- Category and severity selection.
- Optional browser geolocation and optional image evidence (up to 1 MB; compressed before local storage).
- Nearby duplicate grouping (same category, up to 150 m if both reports have GPS) or exact normalized landmark match.
- Community confirmations, one per report per browser profile.
- Transparent severity/confirmation priority score.
- Public tracking ID and status-history timeline.
- Instant public tracking lookup that highlights a report and opens its status history.
- On-card priority explanation: selected severity points + confirmation points = the displayed score.
- Ward-officer demonstration controls for Submitted, Verified, In Progress and Resolved.
- Search, category/status filters, dashboard counts and CSV export.
- Hindi core-interface toggle, visible keyboard focus, and a skip-to-reports link for a more inclusive demo.
- Reset local demo control for a predictable, clean judging run-through.

## 4. How to run

### macOS one-click method

After extracting the ZIP, double-click `START_CIVICPULSE.command`. A Terminal window will open, start the local demo, and open CivicPulse in your browser. Keep that Terminal window open while the app is running.

### Easiest method

1. Extract the ZIP.
2. Open `index.html` in Chrome, Edge or Firefox.
3. Allow location permission when testing GPS, or enter a landmark manually.

### Recommended local-server method

From this folder, run:

```bash
python3 -m http.server 8000
```

Open `http://localhost:8000`.

GPS permissions generally work more reliably on `localhost` or HTTPS than when opening a file directly.

## 5. Suggested demo sequence

1. Show the dashboard and explain that the initial entries are labelled illustrative demo data.
2. Submit a new issue with category, severity and a landmark. If possible, add GPS coordinates.
3. Submit the same category at the same landmark (or within 150 m when both reports contain coordinates). Show the confirmation being added to the existing report rather than creating another card.
4. Confirm a report from the citizen view. Demonstrate that the same browser cannot repeatedly confirm the same report.
5. Show the severity/confirmation score and open the status history.
6. Switch to the ward-officer demo view and change the status to In Progress, then Resolved.
7. Export the report list as CSV.

Use a clean browser profile and reset or clear demo data before the judges' demonstration. Do not imply the seed data is live or real municipal data.

## 6. Technology

- HTML5 for structure and form semantics.
- CSS3 for responsive layout and accessibility-conscious visual hierarchy.
- Vanilla JavaScript for validation, duplicate grouping, priority scoring, rendering and interactions.
- Browser `localStorage` for persistence during a single-browser demonstration.
- Browser Geolocation API for optional coordinates.
- CSV generated client-side for export.

No API keys or external backend are required for this demonstration. The Google Fonts import is optional; the browser will use fallback fonts if offline.

## 7. Important limitations — explain these honestly

This is a **front-end hackathon prototype**, not a deployed municipal service.

- Reports are stored in `localStorage` on one browser/device. Different citizens or officers on different devices do not share data.
- The ward-officer mode is a demonstration switch, not secure login or role-based authorization.
- One-confirmation-per-report is enforced per browser profile only. It is not identity-verified voting.
- Geospatial duplicate grouping is a simple 150 m radius check for same-category reports with GPS coordinates. It is not a full GIS clustering service and it can group unrelated nearby incidents.
- Severity is selected by the reporter. The score does not diagnose danger and must not replace officer review.
- Photos are stored locally in the browser. They are not uploaded to a server.
- Sample records and their coordinates are illustrative demo data, not verified live complaints.
- CivicPulse does not submit complaints to, or receive official status from, any municipal corporation.

## 8. Next production steps

For real multi-user adoption, the next iteration would need a shared backend (for example, Supabase or Firebase), authenticated citizen/officer accounts, server-side role permissions, secure image storage, abuse/spam controls, audit logs, official ward/municipal integration, privacy and retention policies, and accessibility/local-language testing. These are future integrations and are not claimed as implemented in this MVP.

## 9. Team roles

- **Member 1 – Lead/integration:** repository, application walkthrough, quality check and deployment.
- **Member 2 – UI/UX:** responsive styling, layout, readability and mobile testing.
- **Member 3 – JavaScript:** report handling, duplicate matching, confirmation logic, scoring and status timeline.
- **Member 4 – Research/testing/presentation:** problem brief, test evidence, demo recording, presentation and judge Q&A.

All members should be able to explain the complete workflow and the prototype limitations.

## 10. Validation performed on this build

The browser-based checks completed for the following flows: initial dashboard rendering; new report creation; duplicate grouping by exact landmark; duplicate grouping using GPS points within 150 metres; one-confirmation-per-browser behavior; status transition and timeline update in the officer demo view; and mobile-width layout without horizontal overflow. No JavaScript runtime errors were observed in those interaction checks. This is prototype testing, not a field trial or production security review.
