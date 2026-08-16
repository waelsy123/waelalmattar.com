# AGENTS.md

Guidance for AI agent sessions. (CLAUDE.md symlinks here.)

## What this is

Personal site — a single static `index.html`, served by **Cloudflare Pages**
(project `waelalmattar-com`, production alias
https://waelalmattar-com.pages.dev). Migrated from Railway 2026-08-16
(the old setup ran a Caddy container to serve one file).

## Deployment

- **Push to `main` auto-deploys** via `.github/workflows/deploy.yml`
  (wrangler pages deploy; repo secrets `CLOUDFLARE_API_TOKEN` +
  `CLOUDFLARE_ACCOUNT_ID`).
- Manual deploy: `CLOUDFLARE_API_TOKEN=… CLOUDFLARE_ACCOUNT_ID=… npx wrangler
  pages deploy . --project-name waelalmattar-com --branch main`
- There is no build step; the repo root is deployed as-is.

## Domains / DNS

- `waelalmattar.com` + `www` → Pages custom domains (Cloudflare zone,
  proxied CNAMEs to the pages.dev alias; certs auto-managed by Cloudflare).
- `keccak256.waelalmattar.com` → a SEPARATE Vercel project (CNAME
  `cname.vercel-dns.com`, DNS-only). **Do not touch this record.**
- Registration: name.com (user's account, API-manageable). DNS hosting:
  Cloudflare. Nameservers brenna+cullen.ns.cloudflare.com.

## Fleet context

This is part of the wael.today fleet estate — runbook and backlog live in
`~/my-coolify-devops`. Nothing here runs on the Coolify servers or Railway.
