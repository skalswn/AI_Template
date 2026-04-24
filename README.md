# Java 1.8 JSP Spring MVC Template

사내 Java/JSP 프로젝트를 새로 시작할 때 복사해서 사용하는 Claude Code 템플릿입니다.

## 기준 환경

- Java 1.8
- JSP
- Tomcat 9
- Maven WAR
- Spring MVC XML 설정
- Eclipse eGovFrame / Eclipse / IntelliJ
- DB: Oracle, MySQL, Tibero
- Claude Code Agent Team 기반 협업

## 사용 순서

1. `Template` 폴더를 새 프로젝트명으로 복사한다.
2. `scripts/init-project.ps1`로 `groupId`, `artifactId`, 기본 패키지명을 변경한다.
3. `src/main/resources/properties/globals.properties`에서 DB 타입과 접속 정보를 설정한다.
4. Claude Code의 Agent Team이 활성화되어 있는지 확인한다.
5. Backend, Frontend JSP, DB Designer 역할을 나눠 작업한다.
6. 마지막에 QA 점검을 수행하고, 결함은 담당 역할 에이전트에게 되돌려 수정시킨다.

## 프로젝트 요청서

- BluePrint.md: 사용자가 만들 프로젝트의 개요, 기능, 화면, DB, 패키지 정보를 작성하는 파일
- .claud.md: .claud.md 명칭을 사용하는 팀을 위한 안내 파일

## 구조

- `CLAUDE.md`: Claude Code 공통 작업 규칙
- `.claud`: 사용자가 요청한 `.claud` 규칙 파일
- `.claude/agents`: 역할별 에이전트 지침
- `src/main/java/BACKEND_WORK_RULES.md`: 백엔드 최상단 규약
- `src/main/webapp/FRONTEND_JSP_WORK_RULES.md`: JSP 최상단 규약
- `src/main/resources/DB_MAPPER_WORK_RULES.md`: DB mapper 최상단 규약
- `docs/QA_CHECKLIST.md`: 최종 QA 점검표
- `docs/WORK_LOG_TEMPLATE.md`: 작업 정리 양식

## 빌드 확인

```powershell
mvn clean package -DskipTests
```

이 템플릿은 업무 기능을 포함하지 않습니다. 기능 구현은 역할별 지침을 읽은 뒤 새 프로젝트에서 진행합니다.
