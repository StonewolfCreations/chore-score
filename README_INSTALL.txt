CHORE SCORE PWA

Files:
- index.html
- manifest.webmanifest
- service-worker.js
- icons/

IMPORTANT:
This must be hosted from an HTTPS website before an iPhone can install it as a Home Screen web app.
Opening index.html directly from Files is not equivalent to hosting the PWA.

iPhone installation after hosting:
1. Open the hosted Chore Score URL on the iPhone.
2. Use the browser Share menu.
3. Choose Add to Home Screen.
4. Launch Chore Score from its Home Screen icon.

DATA:
- Chore progress and history remain local to the installed web app/browser origin.
- The app requests persistent browser storage when supported.
- Explicitly clearing website/app data can still erase local history.
- The service worker caches the application files for offline launching after first load.

The next reliability upgrade should be cloud-backed history, with browser storage used only as an offline cache.
