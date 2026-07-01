# 작업 기록 (Progress Log)

> 실제로 무엇을 했는지, 어떤 결과가 나왔는지 시간순으로 남기는 곳입니다.
> 에러가 있었다면 원인과 해결 방법도 함께 기록합니다.

---

## 2026-07-01

- 작업 환경 최초 구축
  - `tasks/todo.md`, `tasks/progress.md` 생성
  - `SECURITY.md` 비상 매뉴얼 작성
  - `README.md`에 폴더 구조 정리
- 결과: 정상 완료

- 포트폴리오에 Supabase 방명록 기능 추가
  - `supabase/messages_schema.sql`: `messages` 테이블(id, name, content, created_at) + RLS(누구나 읽기/쓰기, 수정·삭제 정책은 의도적으로 생성 안 함)
  - `company_brief_gemini.html` 맨 아래에 방명록 폼 + 리스트 UI, Supabase JS 클라이언트 연동 스크립트 추가
  - 1차 시도: `config.js`(git 제외) + `config.example.js`(템플릿) 방식으로 구현 → 커밋/푸시
  - 문제 발견: Vercel은 git 저장소 기준으로 배포하므로 git에 없는 `config.js`는 배포 사이트에 포함되지 않음 (정적 사이트라 `.env.local`을 브라우저가 직접 읽을 수 없다는 제약과 같은 뿌리의 문제)
  - 해결: `api/config.js` Vercel 서버리스 함수를 추가해 서버에서 `process.env.SUPABASE_URL`/`SUPABASE_ANON_KEY`를 읽어 브라우저에 전달하는 방식으로 전환. 로컬 개발용 `.env.local`(git 제외) + `.env.example`(템플릿, git 포함) 구성
  - 사용자가 Vercel 대시보드에 환경변수 등록 후 배포 완료
  - 배포 사이트(https://claude-webtest.vercel.app) 확인: 메인 페이지 200, `/api/config`가 실제 값 반환, HTML이 `/api/config`를 정상적으로 호출하도록 배포됨
- 결과: 정상 완료 (Supabase REST API로 읽기/쓰기 RLS 정책도 직접 검증함)

---

## 기록 형식 예시

```
## YYYY-MM-DD

- 무엇을 했는지 (한 줄 요약)
  - 세부 내용
- 결과: 성공 / 실패 (실패 시 원인 + 해결책)
```
