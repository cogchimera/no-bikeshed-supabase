# 🚀 Welcome to Your No-Bikeshed Template!

This template gives you a production-ready foundation for building enterprise web applications with AI assistance.

## 🤖 AI-Guided Setup (Recommended)

**Copy this prompt into your AI assistant:**

```
I just cloned this repository. Guide me through complete setup:

1. Check if I have all prerequisites installed
2. Help me create required accounts (Supabase, Vercel, Sentry, Resend)
3. Configure local development environment
4. Set up environment variables
5. Run the application locally
6. Understand the project structure
7. Create my first feature using AI

Ask me questions ONE AT A TIME and wait for my answers before proceeding.
Start by checking my prerequisites.
```

## 📋 Prerequisites

Before starting, you need:
- [ ] Node.js 20+ (use nvm: `nvm install 20 && nvm use 20`)
- [ ] pnpm installed (`npm install -g pnpm`)
- [ ] Docker Desktop installed and running
- [ ] Git installed
- [ ] Code editor (VS Code recommended)

## 🏃 Quick Start (DIY)

```bash
# 1. Install dependencies
pnpm install

# 2. Start Supabase locally
supabase start

# 3. Copy environment variables
cp .env.example .env.local
# Edit .env.local with values from `supabase status`

# 4. Run the app
pnpm dev

# Frontend: http://localhost:5173
# Supabase Studio: http://localhost:54323
```

## 📚 What's Included

**Frontend:**
- ✅ React 18 + TypeScript + Vite
- ✅ Tailwind CSS + shadcn/ui components
- ✅ React Router + React Query
- ✅ React Hook Form + Zod validation

**Backend:**
- ✅ Supabase (PostgreSQL + Auth + Storage + Realtime)
- ✅ Edge Functions (TypeScript/Deno)
- ✅ Row Level Security policies

**Infrastructure:**
- ✅ Feature flags system (database-based)
- ✅ Analytics event logging
- ✅ User feedback system
- ✅ Email templates (React Email)
- ✅ Multi-tenancy ready (dormant)

**Development:**
- ✅ Testing (Vitest + Playwright)
- ✅ CI/CD (GitHub Actions)
- ✅ Error tracking (Sentry)
- ✅ Synthetic monitoring

## 🎯 Key Concepts

**Monorepo Structure:**
```
/
├── frontend/          # React app
├── supabase/          # Backend (Edge Functions + migrations)
├── shared/            # Shared types/schemas (Zod)
├── emails/            # Email templates (React Email)
└── tests/             # E2E and synthetic tests
```

**AI-Assisted Workflow:**
1. Add idea to `docs/backlog.md`
2. Use AI to generate feature spec
3. AI generates code + tests
4. Human reviews and iterates
5. Deploy to staging → test → promote to production

## 📖 Documentation

- **AI Prompts:** `docs/guides/ai-prompts.md`
- **Setup Guide:** `docs/guides/setup-local-dev.md`
- **Deployment:** `docs/guides/deployment.md`
- **Troubleshooting:** `docs/guides/troubleshooting.md`
- **Runbooks:** `docs/runbooks/`

## 🔑 Required Accounts

**Free Tier Sufficient:**
- Supabase (database, auth, storage)
- Vercel (hosting)
- Sentry (error tracking)
- Resend (email - 3K/month free)
- GitHub (CI/CD)

**Optional:**
- Stripe (payments - test mode free)

## 🎓 Next Steps

1. ✅ Complete setup (use AI prompt above)
2. 📖 Read `docs/guides/ai-prompts.md`
3. 👀 Review example feature (User Profile)
4. 🎨 Customize branding/colors
5. 🚀 Build your first feature with AI
6. 📦 Deploy to staging

## 🆘 Troubleshooting

**Supabase won't start?**
- Check Docker is running
- Check ports 54321-54324 aren't in use
- Try `supabase stop && supabase start`

**pnpm install fails?**
- Make sure you're using Node 20+
- Try `pnpm install --force`

**More help:** See `docs/guides/troubleshooting.md`

## 📞 Support

- 📚 Documentation: `docs/`
- 🐛 Issues: GitHub Issues

---

**Ready to build?** Start with the AI prompt above! 🚀
