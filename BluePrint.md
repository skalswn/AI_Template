# 프로젝트 요청서

이 문서는 사용자가 새 프로젝트를 시작하기 전에 작성하는 기본 골자입니다. Claude Code는 이 문서를 읽고 현재 템플릿 구조 안에서 프로젝트를 구성합니다.

## 1. 프로젝트 개요

- 프로젝트명:
- 업무/서비스 목적:
- 주요 사용자:
- 배포 대상:
- 예상 일정:

## 2. 기술 기준

- Java 버전: Java 1.8
- 서버: Tomcat 9
- 프레임워크: Spring MVC
- 화면: JSP + JSTL
- 빌드: Maven WAR
- IDE: Eclipse eGovFrame / Eclipse / IntelliJ
- DB 선택: `mysql` / `oracle` / `tibero`

## 3. 패키지 및 산출물 이름

- Maven `groupId`:
- Maven `artifactId`:
- 기본 Java package:
- context path:
- WAR 파일명:

## 4. DB 정보

- DBMS:mysql    
- 개발 DB 접속 방식:localhost:3306
- 운영 DB 접속 방식:localhost:3306
- 스키마/계정명:mrs
- 주요 테이블 후보:
- 마이그레이션 필요 여부:

실제 비밀번호는 이 문서에 적지 않습니다. `src/main/resources/properties/globals.properties`에는 로컬 개발용 값만 둡니다.

## 5. 기능 목록

| 우선순위 | 기능명 | 설명 | 담당 시작 역할 | 비고 |
|---|---|---|---|---|
| 1 |  |  | @db / @backend / @frontend |  |
| 2 |  |  | @db / @backend / @frontend |  |

## 6. 화면 목록

| 화면명 | URL | JSP 위치 | 필요한 API | 비고 |
|---|---|---|---|---|
|  |  | `src/main/webapp/WEB-INF/jsp/...` |  |  |

## 7. API / Controller 계획

| Method | URL | 설명 | 요청 파라미터 | 응답/뷰 |
|---|---|---|---|---|
| GET |  |  |  |  |
| POST |  |  |  |  |

API 명세가 필요한 경우 `docs/api-contracts/{기능}.yaml`에 작성합니다.

## 8. 역할별 작업 순서

권장 순서:

1. `@db`: 테이블, 컬럼, DB별 mapper SQL 기준 정리
2. `@backend`: Controller, Service, Mapper interface 구현
3. `@frontend`: JSP, CSS, JS 구현
4. `/finish`: QA 점검 후 결함을 담당 역할로 되돌림

복합 기능은 한 번에 전체 구현하지 말고 위 순서로 나눠 진행합니다.

## 9. 검증 기준

- Maven package 성공
- Tomcat 9 배포 가능
- Java 8 문법/API 기준 유지
- JSP scriptlet 사용 금지
- DB별 mapper suffix 일치: `_mysql.xml`, `_oracle.xml`, `_tibero.xml`
- 실제 계정/비밀번호 미포함

## 10. 특이사항 / 제약

- 폐쇄망 여부:X
- 외부 라이브러리 반입 정책:O
- 공통 디자인/레이아웃 규칙:
- 연계 시스템:
- 보안/감사 요구사항:

## Claude 진행 지시

Claude Code는 이 문서가 작성되어 있으면 다음 순서로 진행합니다.

1. `BluePrint.md`의 빈 항목과 모호한 항목을 먼저 확인한다.
2. Agent Team이 비활성화되어 있으면 활성화 경고를 출력한다.
3. 기능을 DB, Backend, Frontend JSP 작업으로 분해한다.
4. 각 역할의 소유 경로 밖 파일은 임의로 수정하지 않는다.
5. 마지막에 `/finish` 또는 QA 점검을 수행한다.


## 요구사항
각 