---
description: 프로젝트 시작 가이드 출력
---

사용자가 `/start`를 실행하면 아래 안내를 출력합니다.

```
[ROLE REQUIRED] 사내 표준 웹 프로젝트 템플릿입니다.

먼저 루트의 BluePrint.md에 만들 프로젝트 정보를 작성해주세요.

필수 작성 항목:
- 프로젝트명
- groupId / artifactId / 기본 package
- 사용할 DB(mysql/oracle/tibero)
- 기능 목록
- 화면 목록
- Controller/API 계획

작업 역할:
- @db: DB 설계, DB별 mapper SQL, globals.properties
- @backend: Java/Spring MVC/Service/Mapper interface
- @frontend: JSP/CSS/JavaScript
- /finish: QA 최종 점검

참고 문서:
- 공통 규칙: CLAUDE.md
- 프로젝트 요청서: BluePrint.md
- 백엔드 규약: src/main/java/BACKEND_WORK_RULES.md
- 프론트 규약: src/main/webapp/FRONTEND_JSP_WORK_RULES.md
- DB/Mapper 규약: src/main/resources/DB_MAPPER_WORK_RULES.md
```

역할 선언 없이 구체적인 파일 생성/수정 요청이 들어오면 `CLAUDE.md`의 역할 필수 규칙에 따라 역할 선언을 요청합니다.