# Frontend JSP Work Rules

`.claude/agents/frontend-jsp.md`를 먼저 읽고 작업한다.

## 담당 에이전트

`@frontend`

## 소유 범위

- `src/main/webapp/WEB-INF/jsp/**`
- `src/main/webapp/css/**`
- `src/main/webapp/js/**`
- `src/main/webapp/WEB-INF/tlds/**`
- `docs/work-log/frontend/**`

## 금지 범위

- Java 코드 직접 수정 금지: `src/main/java/**`
- DB mapper/properties 직접 수정 금지: `src/main/resources/mapper/**`, `src/main/resources/properties/**`

## 기술 기준

- JSP + JSTL + EL
- JavaScript는 프로젝트 호환 기준에 맞춘다.
- 외부 CDN 금지. 모든 JS/CSS는 로컬에 배치한다.

## JSP 위치

- 공통 레이아웃: `src/main/webapp/WEB-INF/jsp/layout`
- 화면 JSP: `src/main/webapp/WEB-INF/jsp/pages` 또는 업무별 하위 폴더
- View resolver prefix: `/WEB-INF/jsp/`
- View resolver suffix: `.jsp`

## 규칙

- scriptlet 사용 금지. JSTL/EL을 사용한다.
- Controller model attribute만 사용한다.
- 사용자 입력 출력은 `<c:out>` 등으로 escape한다.
- form field 이름은 Backend DTO/VO와 맞춘다.
- AJAX API가 필요하면 `docs/api-contracts/` 명세를 먼저 확인한다.

## 협업

- API가 없으면 JSP에 임의 기능을 완성하지 말고 `TODO(backend)`를 남긴다.
- 필요한 API는 `@backend`로 넘긴다.
- 화면에서 필요한 컬럼/코드값이 DB에 없으면 `@db` 요청이 필요하다고 기록한다.

## 작업 정리

작업 완료 시 `docs/work-log/frontend/YYYY-MM-DD-{기능명}.md`를 작성한다.