# CivicPulse 2.0 — Problem Brief

**Team:** Syntax Sorcerers  
**Track:** 5 — Smarter Cities and Civic Infrastructure  
**Problem prompt:** Real-Time Civic Issue Reporting & Resolution Tracking  
**Tagline:** Report. Verify. Resolve.

## Problem and affected users

Urban residents regularly encounter local civic problems such as potholes, garbage overflowing from public bins, broken streetlights, blocked drains and water-supply disruptions. Residents may report these issues through different channels, but can struggle to see whether an issue has been acknowledged, whether other residents have reported the same location, or whether the issue has actually been resolved. Repeated reports can also make it harder for a local response team to understand the concentration of community concerns.

The primary users are urban residents and daily commuters. Secondary users are ward-level staff and local civic bodies who need an organized view of incoming reports and their progress.

## Why the gap matters

The challenge is not simply that a complaint form is missing. The gap is the lack of a simple, visible journey from report to action: location-specific information can be inconsistent, duplicate complaints can fragment attention, urgency may not be obvious, and the resident may not receive a clear status trail. CivicPulse focuses on bringing those steps into one easy-to-demonstrate workflow.

## Proposed solution

CivicPulse is a responsive web application that allows a resident to submit an issue with its category, description, location, severity and optional GPS coordinates and photo. When a similar unresolved report exists in the same category, the prototype groups a repeat report with the existing item instead of creating another item. It uses a 150-metre distance check when both reports have GPS coordinates, or an exact normalized landmark match when coordinates are unavailable.

Other residents can confirm that they have observed an issue. A transparent priority score combines reporter-selected severity and community confirmations, helping the officer view sort the queue. A ward-officer demonstration view updates the issue through Submitted, Verified, In Progress and Resolved. Each update appears in a public status-history timeline with a tracking ID.

## What is different

CivicPulse combines duplicate grouping, community confirmation, understandable priority scoring and a visible status timeline in one lightweight flow. The score is intentionally transparent and simple so a user can understand why an item appears higher in the list. The interface is designed to work on common mobile and desktop browsers without requiring a complex installation.

## Expected value

For residents, CivicPulse offers a clear way to report an issue, see whether a similar report already exists, confirm a known issue and follow visible status updates. For ward teams, the grouped list and priority sorting can provide a more organized demonstration queue. For a real deployment, the model could help improve visibility and coordination, subject to official adoption and validation.

## Prototype scope and limitations

The current submission is a working front-end demonstration. It uses browser local storage, so reports are shared only within the same browser/device. The ward-officer view is not protected by real authentication, confirmations are limited per browser rather than per verified person, and the application is not connected to a municipal corporation. Seed data is illustrative. The priority score is a sorting aid, not an official safety assessment. A production deployment would require shared cloud storage, authenticated roles, secure evidence storage, abuse prevention, municipal integration, privacy controls and field testing.
