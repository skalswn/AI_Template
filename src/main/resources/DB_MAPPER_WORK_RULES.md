# DB Mapper Work Rules

`.claude/agents/db-designer.md`를 먼저 읽고 작업한다.

## 담당 에이전트

`@db`

## 소유 범위

- `src/main/resources/mapper/**`
- `src/main/resources/properties/globals.properties`
- `docs/db/**`
- `docs/work-log/db/**`

## Mapper 위치

- Common config: `src/main/resources/mapper/config/mybatis-config.xml`
- MySQL mapper: `src/main/resources/mapper/mysql/**/*_mysql.xml`
- Oracle mapper: `src/main/resources/mapper/oracle/**/*_oracle.xml`
- Tibero mapper: `src/main/resources/mapper/tibero/**/*_tibero.xml`

## Namespace 규칙

Mapper XML의 namespace는 Java mapper interface의 FQN과 정확히 일치해야 한다.

예:

```xml
<mapper namespace="com.company.notice.mapper.NoticeMapper">
</mapper>
```

## SQL 규칙

- Java 코드 내 SQL 문자열 금지
- `SELECT *` 금지
- 파라미터는 `#{}` 사용
- `${}`는 정렬 컬럼 등 불가피한 경우만 사용하고 화이트리스트 검증 필수
- DB별 날짜, 문자열, pagination 문법 차이를 명시한다.

## DB별 기준

- MySQL: `LIMIT/OFFSET`, `NOW()`, 문자열 함수 확인
- Oracle: `ROWNUM` 또는 `OFFSET/FETCH`, sequence, `SYSDATE` 확인
- Tibero: Oracle 호환 문법 기준으로 검토하되 Tibero driver와 함수 차이 확인

## 협업

- Java mapper interface가 없거나 변경이 필요하면 `@backend`로 넘긴다.
- JSP 표시값/코드값 영향이 있으면 `@frontend`에 알린다.
- schema 변경 요청은 `docs/db/requests/`에 기록한다.

## 작업 정리

작업 완료 시 `docs/work-log/db/YYYY-MM-DD-{기능명}.md`를 작성한다.