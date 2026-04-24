---
description: 프로젝트 또는 기능 완료 후 QA 점검 실행
---

사용자가 `/finish`를 실행하면 QA Agent를 활성화합니다.

## 수행 규칙

1. 응답 접두어를 `[REVIEWER]` 또는 `[QA]`로 시작합니다.
2. `.claude/agents/qa.md`와 `docs/QA_CHECKLIST.md`를 기준으로 점검합니다.
3. 직접 수정하지 않습니다.
4. 결함은 `@backend`, `@frontend`, `@db` 중 담당 역할에 배정합니다.
5. 담당 역할 수정 후 실패 항목만 재점검합니다.

## 점검 범위

- `pom.xml` 및 Maven WAR 패키징
- `src/main/java/BACKEND_WORK_RULES.md` 기준 백엔드 구조
- `src/main/webapp/FRONTEND_JSP_WORK_RULES.md` 기준 JSP 구조
- `src/main/resources/DB_MAPPER_WORK_RULES.md` 기준 DB/Mapper 구조
- `docs/api-contracts/`와 Controller URL 일치
- `docs/work-log/` 기록 존재
- `docs/issues/` 미해결 이슈
- 실제 비밀번호/운영 접속 정보 포함 여부

## 결과 형식

문제 발견 시:

```text
[REVIEWER] 전체 점검 결과 N건의 이슈 발견

[이슈 #1] 영역: 백엔드
- 파일:
- 문제:
- 조치: @backend 수정 필요

[이슈 #2] 영역: 프론트엔드
- 파일:
- 문제:
- 조치: @frontend 수정 필요

[이슈 #3] 영역: DB
- 파일:
- 문제:
- 조치: @db 수정 필요
```

문제 없음:

```text
[REVIEWER] 전체 점검 통과

- 구조 점검 통과
- 백엔드 규약 통과
- 프론트엔드 규약 통과
- DB/Mapper 규약 통과
- Maven package 가능
```