# Backend Work Rules

`.claude/agents/backend.md`를 먼저 읽고 작업한다.

## 담당 에이전트

`@backend`

## 소유 범위

- `src/main/java/**`
- `src/test/java/**`
- 필요한 경우 `src/main/resources/spring/**`
- Java mapper interface
- `docs/api-contracts/**`
- `docs/work-log/backend/**`

## 금지 범위

- JSP/CSS/JS 직접 수정 금지: `src/main/webapp/**`
- DB별 mapper XML 직접 수정은 원칙적으로 `@db` 담당
- 실제 DB 계정/비밀번호 작성 금지

## 기술 기준

- Java 1.8 문법/API 기준
- Spring MVC 5.3.x
- MyBatis 3.5.x
- Maven WAR
- Tomcat 9

## 계층 규칙

Controller -> Service -> Mapper interface -> MyBatis XML -> DB

## 패키지 규칙

- Base package는 `BluePrint.md`와 `scripts/init-project.ps1` 기준으로 결정한다.
- Controller: `<feature>.web`
- Service interface: `<feature>.service`
- Service implementation: `<feature>.service.impl`
- Mapper interface: `<feature>.mapper`
- DTO/VO: `<feature>.service` 또는 `<feature>.dto`

## URL 규칙

기본 URL은 `/{feature}/{action}.do` 패턴을 사용한다.

예:
- `/notice/list.do`
- `/notice/detail.do`
- `/notice/save.do`
- `/notice/delete.do`

## 협업 규칙

- DB 스키마 또는 SQL 변경이 필요하면 `docs/db/requests/YYYY-MM-DD-{설명}.md`에 요청을 남기고 `@db`로 넘긴다.
- 프론트에서 사용할 API는 `docs/api-contracts/{기능}.yaml`에 명세한다.
- JSP에서 필요한 model attribute는 `docs/work-log/backend/`에 기록한다.

## 작업 정리

작업 완료 시 `docs/work-log/backend/YYYY-MM-DD-{기능명}.md`를 작성한다.