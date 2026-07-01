# claude-webtest

Claude Code와 함께 작업하는 프로젝트 폴더입니다.

## 📁 폴더 구조

```
claude-webtest/
├── .gitignore                 # git에 올리지 않을 파일 목록 (.env, *.key 등 민감 파일 제외)
├── CLAUDE.md                  # Claude Code 작업 지침서 (보안 규칙, 소통 방식, 작업 원칙)
├── SECURITY.md                # 🔒 보안 비상 매뉴얼 (키 노출 시 대응 절차 등)
├── README.md                  # 이 문서 — 폴더 구조 안내
├── company_brief_gemini.html  # (기존 파일) 회사 브리핑 HTML 문서
└── tasks/                     # 작업 계획 및 기록
    ├── todo.md                 # 할 일 목록 (계획 → 확인 → 진행)
    └── progress.md             # 작업 기록 (날짜별 진행 내역, 에러/해결 기록)
```

## 📌 문서별 역할

| 파일 | 역할 |
|---|---|
| `.gitignore` | `.env`, `*.key` 등 민감 파일이 실수로 커밋되지 않도록 제외 |
| `CLAUDE.md` | Claude Code가 항상 따라야 하는 규칙. 보안, 소통 방식, 작업 원칙 등을 정의 |
| `SECURITY.md` | 보안 사고(키 노출 등) 발생 시 대응 절차와 평소 체크리스트 |
| `tasks/todo.md` | 진행할 작업을 체크리스트로 계획 |
| `tasks/progress.md` | 실제로 한 작업과 결과를 시간순으로 기록 |

## 🚀 작업 흐름

1. 큰 작업은 `tasks/todo.md`에 계획을 먼저 적고 확인받기
2. 한 단계씩 진행하며 결과 확인
3. `tasks/progress.md`에 진행 내역 기록
4. "다 했다" 선언 전에는 실제 동작 확인 (예: 브라우저 테스트)

자세한 규칙은 [`CLAUDE.md`](./CLAUDE.md)를 참고하세요.
