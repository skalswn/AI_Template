# Claude Code Rules

## Agent Team 필수 확인

작업 시작 전 Claude Code Agent Team 활성화 여부를 확인한다.

Agent Team이 비활성화되어 있으면 구현을 중단하고 아래 경고를 출력한다.

`Agent Team is not enabled. Enable Agent Team before dividing frontend, backend, DB, and QA work.`

Agent Team을 사용할 수 없는 PC라면 `docs/work-log.md`에 제한 사항을 기록하고, 사용자의 승인 후 단일 에이전트 방식으로만 진행한다.

## 프로젝트 기준

- Java 1.8 문법만 사용한다.
- Tomcat 9 배포를 기준으로 한다.
- Maven `war` 패키징을 기준으로 한다.
- Spring MVC 패턴을 따른다.
- JSP는 `src/main/webapp/WEB-INF/jsp` 하위에 둔다.
- MyBatis mapper는 `src/main/resources/mapper` 하위에 둔다.
- DB는 `mysql`, `oracle`, `tibero` 중 하나를 명시한다.

## 역할

- Backend Agent: `src/main/java`, 서비스/컨트롤러/공통 Java 코드 담당.
- Frontend JSP Agent: `src/main/webapp`, JSP/CSS/JS/레이아웃 담당.
- DB Designer Agent: `src/main/resources/mapper`, DB 설정, SQL, DDL 검토 담당.
- QA Agent: 상시 구현 역할이 아니다. 기능 또는 프로젝트 마지막에 점검하고 결함을 담당 역할에게 배정한다.

## 협업 방식

1. 각 역할은 자기 역할 파일을 먼저 읽는다.
2. 작업 범위를 파일 경로 기준으로 나눈다.
3. 다른 역할 소유 파일을 수정해야 하면 `docs/work-log.md`에 이유를 남긴다.
4. Spring MVC 흐름은 `Controller -> Service -> Mapper -> JSP`를 유지한다.
5. 작업 후 `docs/work-log.md`에 변경 파일, 검증 결과, 남은 위험을 기록한다.
6. 마지막에는 QA가 `docs/QA_CHECKLIST.md` 기준으로 점검한다.
7. QA 결함은 담당 역할 에이전트가 수정하고 QA가 재검증한다.

## 오류 처리

- 빌드 오류: 첫 번째 컴파일/의존성 오류부터 원인을 제거하고 재실행한다.
- JSP 오류: view resolver 경로, model attribute 이름, JSTL/taglib, Tomcat 로그를 확인한다.
- DB 오류: `Globals.DbType`, driver, URL, mapper suffix, namespace, parameter/result mapping을 확인한다.
- 인코딩 오류: Java, XML, JSP, properties는 UTF-8을 기준으로 한다.
- 사내/상용 JAR 오류: 바이너리를 무단 포함하지 말고 필요한 JAR명과 설치 위치를 문서화한다.

## 완료 보고

완료 시 아래 항목을 보고한다.

- 변경 파일
- 구현/수정 내용
- DB 영향
- 검증 명령과 결과
- QA 미해결 사항