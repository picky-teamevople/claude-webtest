-- ============================================
-- 방명록(guestbook) 테이블 + RLS 정책
-- 대상: Supabase (Postgres)
-- ============================================

-- 1. 테이블 생성
create table if not exists public.guestbook (
  id         bigint generated always as identity primary key,
  name       text not null check (char_length(name) between 1 and 50),
  message    text not null check (char_length(message) between 1 and 500),
  created_at timestamptz not null default now()
);

-- 2. 최신 글이 먼저 보이도록 조회 성능용 인덱스
create index if not exists guestbook_created_at_idx
  on public.guestbook (created_at desc);

-- 3. RLS(Row Level Security) 활성화
alter table public.guestbook enable row level security;

-- 4. 읽기(SELECT): 누구나 가능 (로그인 안 해도 OK)
create policy "guestbook_select_anyone"
  on public.guestbook
  for select
  to anon, authenticated
  using (true);

-- 5. 쓰기(INSERT): 누구나 가능 (로그인 안 해도 OK)
create policy "guestbook_insert_anyone"
  on public.guestbook
  for insert
  to anon, authenticated
  with check (true);

-- 6. UPDATE / DELETE 정책은 만들지 않음
--    -> RLS 기본 동작(전체 차단)에 의해 아무도 수정/삭제 불가
