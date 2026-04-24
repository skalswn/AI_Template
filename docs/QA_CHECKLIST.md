# QA Checklist

## Environment

- JDK is 1.8.
- Tomcat is 9.x.
- `Globals.DbType` is `mysql`, `oracle`, or `tibero`.
- Real credentials are not committed.
- Agent Team status is recorded.

## Build

- `mvn test` passes, or failure reason is documented.
- `mvn clean package -DskipTests` creates a WAR.
- Java 8 syntax/API baseline is maintained.

## Backend

- Controller URL mappings are unique.
- Service contains business logic.
- Mapper calls are validated.
- Exceptions are handled safely.

## JSP

- JSP path matches controller view name.
- Scriptlet is not used.
- Empty/error states are handled.
- Form fields match backend DTO/VO.

## DB

- Mapper namespace matches Java mapper interface.
- SQL file suffix matches DB type.
- Oracle/MySQL/Tibero dialect differences are handled.
- DDL/index/migration notes exist when schema changes.

## Defect Routing

- Backend defect -> Backend Agent.
- JSP/rendering defect -> Frontend JSP Agent.
- SQL/schema defect -> DB Designer Agent.
- QA retests after owner fix.
