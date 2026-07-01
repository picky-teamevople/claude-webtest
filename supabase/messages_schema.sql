-- ============================================
-- 방명록(messages) 테이블 + RLS 정책
-- 대상: Supabase (Postgres)
-- 실행 방법: Supabase 대시보드 > SQL Editor에 붙여넣고 실행
-- ============================================

-- 1. 테이블 생성
create table if not exists public.messages (
  id         bigint generated always as identity primary key,
  name       text not null check (char_length(name) between 1 and 50),
  content    text not null check (char_length(content) between 1 and 500),
  created_at timestamptz not null default now()
);

-- 2. 최신 글이 먼저 보이도록 조회 성능용 인덱스
create index if not exists messages_created_at_idx
  on public.messages (created_at desc);

-- 3. RLS(Row Level Security) 활성화
alter table public.messages enable row level security;

-- 4. 읽기(SELECT): 누구나 가능 (로그인 안 해도 OK)
create policy "messages_select_anyone"
  on public.messages
  for select
  to anon, authenticated
  using (true);

-- 5. 쓰기(INSERT): 누구나 가능 (로그인 안 해도 OK)
create policy "messages_insert_anyone"
  on public.messages
  for insert
  to anon, authenticated
  with check (true);

-- 6. UPDATE / DELETE 정책은 만들지 않음
--    -> RLS 기본 동작(전체 차단)에 의해 아무도 수정/삭제 불가
