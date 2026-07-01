# To-Do 목록

> 이 파일은 앞으로 진행할 작업을 계획하고 체크하는 곳입니다.
> 큰 작업을 시작하기 전에 여기에 계획을 먼저 적고 확인받은 뒤 진행합니다. (CLAUDE.md 원칙 1)

---

## 진행 중

## 완료

- [x] 작업 환경 구축 (tasks 폴더, todo.md/progress.md, SECURITY.md, README.md 생성)
- [x] 방명록 DB 스키마 1차 설계 (`supabase/guestbook_schema.sql`) — 이후 요청으로 테이블명/컬럼명이 `messages`(id, name, content, created_at)로 확정됨
- [x] 포트폴리오에 방명록(Supabase) 기능 추가 및 Vercel 배포 완료
  - `supabase/messages_schema.sql` — `messages` 테이블 + RLS(누구나 읽기/쓰기) 실행 완료
  - `company_brief_gemini.html` 맨 아래에 방명록 폼 + 리스트 UI 추가
  - 환경변수는 Vercel 서버리스 함수(`api/config.js`) + 대시보드 환경변수로 관리 (로컬은 `.env.local`)
  - https://claude-webtest.vercel.app 배포 및 `/api/config`, 방명록 등록/조회 동작 확인

---

## 작성 규칙
1. 새 작업은 체크박스(`- [ ]`)로 추가합니다.
2. 작업이 여러 단계로 나뉘면 하위 체크리스트로 세분화합니다.
3. 완료되면 체크(`- [x]`)로 바꾸고 "완료" 섹션으로 옮깁니다.
4. 큰 작업은 시작 전에 계획을 먼저 적고 사용자 확인을 받습니다.
