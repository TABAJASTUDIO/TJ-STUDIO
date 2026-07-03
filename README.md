# TJ Studio V5.1

Files to upload to GitHub:
- _worker.js
- schema.sql
- README.md

Cloudflare:
1. Connect GitHub repo to Pages.
2. Create D1 Database.
3. Run schema.sql in D1 Console.
4. Bind D1 to Pages as DB.
5. Add environment variables:
ADMIN_EMAIL
ADMIN_PASSWORD
SESSION_SECRET
6. Redeploy and open /admin.html
