# No-Bikeshed Supabase Stack

**Every technology decision explained.**

---

## Philosophy

This stack is optimized for:
1. **AI code generation quality** - Claude generates best code for these tools
2. **Speed to production** - Clone → Build → Deploy in hours
3. **Zero configuration** - No decisions, just start building
4. **Transparent costs** - Know exactly what you're paying

---

## Technology Decisions

### Frontend Stack

#### TypeScript (not JavaScript)
- **Why:** AI generates higher-quality typed code
- **Why:** Catch errors at compile-time, not runtime
- **Why:** Better autocomplete, refactoring, and tooling
- **Cost:** None - it's JavaScript with types

#### React 18 (not Vue, Svelte, Angular)
- **Why:** Most training data for AI models = best code generation
- **Why:** Largest ecosystem and community
- **Why:** Hooks model perfect for AI to understand
- **Cost:** None - open source

#### Vite (not Create React App, Next.js)
- **Why:** Fast dev server and build times
- **Why:** Simpler than Next.js for AI to reason about
- **Why:** ESM-native, modern tooling
- **Why not Next.js:** Overkill for most apps, harder for AI to navigate
- **Cost:** None - open source

#### Tailwind CSS (not CSS Modules, Styled Components)
- **Why:** AI excels at generating utility classes
- **Why:** No context switching between files
- **Why:** Consistent design system built-in
- **Why:** No runtime cost
- **Cost:** None - open source

#### shadcn/ui (not Material-UI, Chakra, Ant Design)
- **Why:** Copy-paste components, not npm dependencies
- **Why:** Full control - you own the code
- **Why:** Built on Radix (accessible by default)
- **Why:** Tailwind-native styling
- **Cost:** None - open source

#### React Router v6 (not Next.js router, TanStack Router)
- **Why:** Simple, well-understood by AI
- **Why:** Client-side routing sufficient for most apps
- **Why:** No server complexity
- **Cost:** None - open source

#### React Query / TanStack Query (not Redux, Zustand)
- **Why:** Server state belongs separate from client state
- **Why:** Automatic caching, refetching, optimistic updates
- **Why:** AI generates excellent React Query code
- **Why not Redux:** Overkill for most apps, complex for AI
- **Cost:** None - open source

#### React Hook Form (not Formik, React Final Form)
- **Why:** Best performance (uncontrolled inputs)
- **Why:** AI generates clean form code with it
- **Why:** Pairs perfectly with Zod validation
- **Cost:** None - open source

#### Zod (not Yup, Joi, class-validator)
- **Why:** TypeScript-first validation
- **Why:** Share schemas between frontend and backend
- **Why:** AI generates excellent Zod schemas
- **Why:** Infer TypeScript types from schemas
- **Cost:** None - open source

---

### Backend Stack (Supabase)

#### Supabase (not Firebase, AWS Amplify, PocketBase)
- **Why:** PostgreSQL (real database, not NoSQL)
- **Why:** Row Level Security = security in database
- **Why:** Real-time subscriptions built-in
- **Why:** Auth + Storage + Functions in one platform
- **Why not Firebase:** NoSQL harder for complex queries
- **Why not Amplify:** AWS complexity, vendor lock-in
- **Cost:** Free tier: 500MB DB, 2GB storage, 2GB bandwidth

#### PostgreSQL (via Supabase)
- **Why:** Most powerful open-source database
- **Why:** ACID compliance, complex queries, joins
- **Why:** AI generates good SQL
- **Why not MongoDB:** Harder to maintain data integrity
- **Cost:** Included in Supabase pricing

#### Supabase Auth (not Auth0, Clerk, NextAuth)
- **Why:** Integrated with database and RLS
- **Why:** Email, OAuth, magic links built-in
- **Why:** No extra service to manage
- **Cost:** Included in Supabase pricing

#### Supabase Edge Functions (not Vercel Functions, AWS Lambda)
- **Why:** TypeScript/Deno runtime
- **Why:** Integrated with Supabase
- **Why:** Low latency (global edge network)
- **Why:** AI generates good Deno code
- **Cost:** 500K invocations free/month

#### Raw SQL (no ORM like Prisma, Drizzle, TypeORM)
- **Why:** More readable for humans and AI
- **Why:** Better performance (no abstraction overhead)
- **Why:** Easier to review AI-generated queries
- **Why:** PostgreSQL features accessible directly
- **Cost:** None

#### SQL Migrations (not Prisma Migrate, Drizzle Kit)
- **Why:** Version-controlled SQL files
- **Why:** Review exactly what changes
- **Why:** Database-agnostic (portable)
- **Why:** AI generates clear SQL
- **Cost:** None

---

### Development Tools

#### pnpm (not npm, yarn, bun)
- **Why:** Fastest install times
- **Why:** Disk space efficient (content-addressed storage)
- **Why:** Strict dependency resolution (prevents phantom deps)
- **Why not npm:** Slower, duplicates packages
- **Why not yarn:** pnpm is faster
- **Why not bun:** Too new, less stable
- **Cost:** None

#### Vitest (not Jest)
- **Why:** Vite-native (same config, faster)
- **Why:** ESM-native, modern
- **Why:** Compatible with Jest API
- **Why:** AI generates good Vitest tests
- **Cost:** None

#### Playwright (not Cypress, Selenium)
- **Why:** True browser automation (not just DOM)
- **Why:** Multiple browsers (Chromium, Firefox, WebKit)
- **Why:** Better for AI to generate tests
- **Why:** Modern, actively developed
- **Cost:** None

#### ESLint + Prettier (not just ESLint)
- **Why:** ESLint = code quality, Prettier = formatting
- **Why:** No arguing about style
- **Why:** Auto-fix on save
- **Cost:** None

---

### Infrastructure

#### Vercel (not Netlify, CloudFlare Pages)
- **Why:** Best Next.js/React hosting
- **Why:** Zero-config deployments
- **Why:** Preview deployments automatic
- **Why:** Free tier generous
- **Cost:** Free: unlimited projects, 100GB bandwidth

#### GitHub Actions (not CircleCI, GitLab CI)
- **Why:** Integrated with GitHub
- **Why:** Free for public repos
- **Why:** Good for private repos (2K minutes/month)
- **Why:** AI generates good workflow files
- **Cost:** Free for public, 2K minutes for private

#### Sentry (not Rollbar, Bugsnag)
- **Why:** Best error tracking
- **Why:** Source maps, breadcrumbs, releases
- **Why:** Free tier sufficient for MVPs
- **Cost:** Free: 5K errors/month

#### Resend (not SendGrid, Mailgun, AWS SES)
- **Why:** Best developer experience
- **Why:** React Email integration
- **Why:** Simple API, great docs
- **Why:** Generous free tier
- **Why not SendGrid:** Harder to use, complex API
- **Cost:** Free: 3K emails/month

#### React Email (not MJML, Foundation for Emails)
- **Why:** Write emails as React components
- **Why:** TypeScript support
- **Why:** Preview locally
- **Why:** AI generates excellent React components
- **Cost:** None - open source

---

### AI Development

#### Cline (not Cursor, GitHub Copilot)
- **Why:** Model-agnostic (use any AI model)
- **Why:** Transparent pay-as-you-go pricing
- **Why:** Open source, extensible
- **Why:** Fine-grained auto-approve controls
- **Why:** VS Code native (use your existing setup)
- **Why not Cursor:** Subscription model, less control
- **Why not Copilot:** GPT-based, not Claude
- **Cost:** $0 for extension, pay Claude API usage

#### Claude 3.5 Sonnet (not GPT-4, Gemini)
- **Why:** Best TypeScript code generation
- **Why:** Best React patterns (always modern hooks)
- **Why:** Superior error handling
- **Why:** Security-aware (parameterized queries, XSS prevention)
- **Why:** Excellent with Zod schemas
- **Why not GPT-4:** Less strict with TypeScript types
- **Why not Gemini:** Inconsistent code quality
- **Cost:** ~$3-15 per million tokens (~$20-30/month typical)

---

## Architecture Patterns

### Multi-Tenancy (Dormant)
Every table has `tenant_id UUID REFERENCES tenants(id)` (nullable).

**Why dormant:**
- Easy to enable later (just make NOT NULL)
- No performance cost when unused
- Future-proofs for SaaS pivot

### Feature Flags (Database)
Simple table: `feature_flags (name, enabled, rollout_percentage)`

**Why database, not LaunchDarkly:**
- No external dependency
- No extra cost
- Good enough for most use cases
- Easy to build admin UI

### Analytics (Database Events)
Separate `analytics` schema with `events` table.

**Why not Google Analytics:**
- Own your data
- Query with SQL
- No privacy issues
- Free (just database storage)

**When to upgrade:** PostHog/Plausible when you need dashboards.

### User Feedback (Database)
Simple table: `user_feedback (type, title, description, status)`

**Why not Canny/UserVoice:**
- No external service
- Own your data
- Easy to triage with SQL
- Build simple admin UI

---

## Deployment Strategy

### Staging → Production
- **main branch** → Auto-deploy to staging
- **Manual promotion** → Deploy to production
- **Why:** Catch bugs in staging, manual QA gate

### GitHub Actions CI/CD
- **On PR:** Run tests, linting, type-check
- **On merge:** Deploy to staging
- **Manual:** Promote to production

### Synthetic Monitoring
- **GitHub Actions** runs Playwright tests every 15 minutes
- **Free:** 2K minutes/month sufficient
- **Why not paid monitoring:** Overkill for MVP

---

## Security

### Row Level Security (RLS)
PostgreSQL policies enforce access control in database.

**Why RLS not app-level auth:**
- Can't bypass (even with SQL injection)
- Single source of truth
- Works across Edge Functions

### Input Validation
Zod schemas on frontend AND backend.

**Why both:**
- Frontend: Better UX (instant feedback)
- Backend: Security (never trust client)

### Secrets Management
- **Local:** `.env.local` (gitignored)
- **Deployed:** Vercel environment variables
- **Database:** Supabase Vault for sensitive data

---

## Cost Optimization

### Free Tier Limits
- Supabase: 500MB DB, 2GB storage, 2GB bandwidth
- Vercel: Unlimited projects, 100GB bandwidth
- Sentry: 5K errors/month
- Resend: 3K emails/month
- GitHub Actions: 2K minutes/month

**Total MVP cost: $20-30/month** (just Claude API)

### When to Upgrade
- Supabase Pro ($25/mo): When exceeding free DB size
- Vercel Pro ($20/mo): When need faster builds, analytics
- Sentry Team ($26/mo): When exceed 5K errors
- Resend ($20/mo): When exceed 3K emails

---

## What We Explicitly DON'T Use

### No Next.js
- **Why:** Overkill for most apps
- **Complexity:** Server components, routes, middleware
- **AI confusion:** Harder for AI to navigate

### No Redux
- **Why:** React Query handles server state
- **Why:** useState handles local state
- **Boilerplate:** Too much for AI to generate correctly

### No Prisma ORM
- **Why:** Raw SQL more readable
- **Why:** Less abstraction = less AI confusion
- **Why:** Better performance

### No Docker for Frontend
- **Why:** Vite dev server sufficient locally
- **Why:** Vercel handles production

### No Microservices
- **Why:** Monolith sufficient until massive scale
- **Why:** Less complexity for AI
- **Why:** Easier to deploy, debug, monitor

### No GraphQL
- **Why:** REST simpler for AI
- **Why:** Supabase has auto-generated REST API
- **Why:** Less complexity, faster iteration

---

## Trade-offs We Accept

### Limited Flexibility
**Trade-off:** Opinionated stack
**Benefit:** No decisions, start building immediately

### Supabase Vendor Lock-in
**Trade-off:** Harder to migrate away
**Benefit:** Massive productivity boost, integrated platform
**Mitigation:** PostgreSQL underneath (can self-host)

### No Server-Side Rendering (SSR)
**Trade-off:** Worse initial page load, SEO
**Benefit:** Simpler architecture, easier AI generation
**When to reconsider:** High-traffic content site (rare)

### Database for Analytics
**Trade-off:** Less sophisticated than dedicated tools
**Benefit:** Own your data, zero cost, query with SQL
**When to upgrade:** Need dashboards, complex analysis

### 20-40% Test Coverage Target
**Trade-off:** Not comprehensive testing
**Benefit:** Faster shipping, focus on critical paths
**Why:** AI-generated CRUD code is reliable

---

## Upgrade Paths

**When you outgrow this stack:**

- **Search:** Add PostgreSQL FTS or Typesense
- **Caching:** Add Redis for hot data
- **Analytics:** Migrate to PostHog/Plausible
- **Multi-tenancy:** Make `tenant_id` NOT NULL, enable RLS
- **Realtime at Scale:** Consider dedicated WebSocket service
- **Global:** Add CloudFlare for CDN
- **Microservices:** Split when single DB becomes bottleneck

---

## References

- Supabase: https://supabase.com/docs
- React Query: https://tanstack.com/query/latest
- Zod: https://zod.dev
- shadcn/ui: https://ui.shadcn.com
- Tailwind: https://tailwindcss.com
- Cline: https://cline.bot
- Claude: https://anthropic.com

---

**Questions about decisions? Open a GitHub Discussion.**
