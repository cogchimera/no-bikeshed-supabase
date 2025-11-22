CREATE SCHEMA IF NOT EXISTS analytics;

CREATE TABLE analytics.events (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  tenant_id UUID REFERENCES tenants(id),
  user_id UUID REFERENCES auth.users(id) ON DELETE SET NULL,
  session_id TEXT,
  event_name TEXT NOT NULL,
  properties JSONB DEFAULT '{}'::jsonb,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX events_user_id_idx ON analytics.events(user_id);
CREATE INDEX events_event_name_idx ON analytics.events(event_name);
CREATE INDEX events_created_at_idx ON analytics.events(created_at DESC);

ALTER TABLE analytics.events ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can insert own events"
  ON analytics.events FOR INSERT
  WITH CHECK (auth.uid() = user_id OR user_id IS NULL);