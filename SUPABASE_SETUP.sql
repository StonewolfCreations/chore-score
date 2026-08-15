-- Chore Score cloud state table
-- Safe to run if the table/policies already exist.

create table if not exists public.app_state (
    user_id uuid primary key references auth.users(id) on delete cascade,
    state jsonb not null default '{}'::jsonb,
    updated_at timestamptz not null default now()
);

alter table public.app_state enable row level security;

grant select, insert, update on table public.app_state to authenticated;

drop policy if exists "Users can read their own app state" on public.app_state;
drop policy if exists "Users can insert their own app state" on public.app_state;
drop policy if exists "Users can update their own app state" on public.app_state;

create policy "Users can read their own app state"
on public.app_state
for select
to authenticated
using ((select auth.uid()) = user_id);

create policy "Users can insert their own app state"
on public.app_state
for insert
to authenticated
with check ((select auth.uid()) = user_id);

create policy "Users can update their own app state"
on public.app_state
for update
to authenticated
using ((select auth.uid()) = user_id)
with check ((select auth.uid()) = user_id);
