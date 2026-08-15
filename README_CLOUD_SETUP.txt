CHORE SCORE — CLOUD-BACKED PWA

Production URL:
https://stonewolfcreations.github.io/chore-score/

Supabase project URL:
https://pheyssbozgjviasogrrz.supabase.co

1. SUPABASE
Run SUPABASE_SETUP.sql in SQL Editor.

2. AUTHENTICATION -> URL CONFIGURATION
Site URL:
https://stonewolfcreations.github.io/chore-score/

Redirect URL:
https://stonewolfcreations.github.io/chore-score/

3. GITHUB
Upload the CONTENTS of this package to the root of the chore-score repository.
Keep GitHub Pages on main / root.

4. TEST
Open https://stonewolfcreations.github.io/chore-score/
Open menu -> Cloud Backup.
Enter the email address that will own the history.
Tap Send sign-in link.
Open the email on the iPhone and follow the link.
After sign-in, the header should reach "Cloud: saved".

5. RECOVERY
Once cloud saving works, clearing local browser data will remove the local copy and sign-in session,
but the app_state row remains in Supabase. Sign in again with the same email to restore it.

SECURITY
The sb_publishable_ key is safe to expose in this PWA when RLS is enabled.
Never add an sb_secret_ or service_role key to this repository.
