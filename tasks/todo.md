# To-Do 목록

> 이 파일은 앞으로 진행할 작업을 계획하고 체크하는 곳입니다.
> 큰 작업을 시작하기 전에 여기에 계획을 먼저 적고 확인받은 뒤 진행합니다. (CLAUDE.md 원칙 1)

---

## 진행 중

- [ ] 포트폴리오에 방명록(Supabase) 기능 추가
  - [x] 1. `supabase/messages_schema.sql` 작성 — `messages` 테이블(id, name, content, created_at) + RLS(누구나 읽기/쓰기)
  - [x] 2. `config.example.js`(git 포함, 템플릿) + `config.js`(git 제외, 실제 키) 생성
  - [x] 3. `.gitignore`에 `config.js` 추가
  - [x] 4. `company_brief_gemini.html` 맨 아래에 방명록 폼 + 리스트 UI, Supabase JS 연동 스크립트 추가
  - [ ] 5. 로컬에서 브라우저로 열어 실제 등록/조회 동작 확인 (사용자 확인 필요)
  - [ ] 6. `tasks/progress.md`에 결과 기록

## 완료

- [x] 작업 환경 구축 (tasks 폴더, todo.md/progress.md, SECURITY.md, README.md 생성)
- [x] 방명록 DB 스키마 1차 설계 (`supabase/guestbook_schema.sql`) — 이후 요청으로 테이블명/컬럼명이 `messages`(id, name, content, created_at)로 확정됨

---

## 작성 규칙
1. 새 작업은 체크박스(`- [ ]`)로 추가합니다.
2. 작업이 여러 단계로 나뉘면 하위 체크리스트로 세분화합니다.
3. 완료되면 체크(`- [x]`)로 바꾸고 "완료" 섹션으로 옮깁니다.
4. 큰 작업은 시작 전에 계획을 먼저 적고 사용자 확인을 받습니다.
