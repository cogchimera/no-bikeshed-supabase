# AI Prompt Library

## Generate New Feature

```
Using our P-stack (React + TypeScript + Supabase), generate code for:

[Feature description]

Requirements:
- Frontend: React Hook Form + Zod validation
- Backend: Supabase RLS policies
- Styling: Tailwind CSS
- Testing: Tests for complex logic

Create:
1. Frontend component
2. Zod schema in shared/schemas/
3. Database migration if needed
4. RLS policies
5. Tests
```

## Fix Bug

```
I have a bug in [component/file name]:

**Symptoms:** [what's happening]
**Expected:** [what should happen]
**Error:** [error message]

Context: P-stack (React + TypeScript + Supabase)

Please:
1. Identify root cause
2. Suggest fix
3. Generate test to prevent regression
```

## Database Migration

```
I need a migration for: [describe schema change]

Requirements:
- Backward compatible if possible
- Include rollback procedure
- Add indexes
- Consider tenant_id (dormant multi-tenancy)

Generate:
1. Up migration (SQL)
2. Down migration (SQL)
3. RLS policies if new table
```