# To-Do 목록

> 이 파일은 앞으로 진행할 작업을 계획하고 체크하는 곳입니다.
> 큰 작업을 시작하기 전에 여기에 계획을 먼저 적고 확인받은 뒤 진행합니다. (CLAUDE.md 원칙 1)

---

## 진행 중

- [ ] 포트폴리오에 방명록(Supabase) 기능 추가
  - [x] 1. `supabase/messages_schema.sql` 작성 — `messages` 테이블(id, name, content, created_at) + RLS(누구나 읽기/쓰기)
  - [x] 2. `company_brief_gemini.html` 맨 아래에 방명록 폼 + 리스트 UI, Supabase JS 연동 스크립트 추가
  - [x] 3. 첫 커밋 + 푸시 (config.js 파일 방식)
  - [x] 4. Vercel 배포 확인 후 config.js 방식 → 서버리스 함수(`api/config.js`) + `.env.local`/`.env.example` 방식으로 전환
  - [ ] 5. Vercel 대시보드에 SUPABASE_URL / SUPABASE_ANON_KEY 환경변수 등록 (사용자가 직접 — CLI 로그인 필요)
  - [ ] 6. `vercel dev`로 로컬에서 실제 브라우저 동작 확인 (사용자 확인 필요)
  - [ ] 7. 변경사항 커밋 + 푸시
  - [ ] 8. `tasks/progress.md`에 결과 기록

## 완료

- [x] 작업 환경 구축 (tasks 폴더, todo.md/progress.md, SECURITY.md, README.md 생성)
- [x] 방명록 DB 스키마 1차 설계 (`supabase/guestbook_schema.sql`) — 이후 요청으로 테이블명/컬럼명이 `messages`(id, name, content, created_at)로 확정됨

---

## 작성 규칙
1. 새 작업은 체크박스(`- [ ]`)로 추가합니다.
2. 작업이 여러 단계로 나뉘면 하위 체크리스트로 세분화합니다.
3. 완료되면 체크(`- [x]`)로 바꾸고 "완료" 섹션으로 옮깁니다.
4. 큰 작업은 시작 전에 계획을 먼저 적고 사용자 확인을 받습니다.
