# Recondition

A guided workout app for graded exercise reconditioning: one exercise on screen at a time, a countdown, automatic rest intervals, and a session log. Sessions are chosen by a custody rhythm (2-2-3 and the like), so days with the kids are home, bodyweight sessions and the others are gym sessions. Frequency ramps 3 → 4 → 5 a week only after three consecutive weeks at target. Calf raises are in every session.

One self-contained `index.html`: inline CSS and JS, no build step, no external dependencies. All data stays in the browser's localStorage; the Export tab produces CSV and a physician-readable summary, plus a backup file for moving phones.

## Install on a phone

Open the hosted page in Safari or Chrome, then **Share → Add to Home Screen**. It opens standalone and works offline after the first visit.

## Hosting

`make-site.sh` wraps `index.html` into a full document in `docs/` alongside the manifest, service worker and icons. GitHub Pages serves `docs/` from `main`.
