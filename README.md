# Docker Demo - Docker Practice

This is a Spring Boot REST API project used for practicing Docker and containerization concepts.

## Tech Stack

*   **Java**: 21 (Recommended)
*   **Framework**: Spring Boot
*   **Database**: MySQL
*   **Build Tool**: Maven / Gradle

## Configuration

The application is configured to connect to a MySQL database. Based on `application.properties`, the database URL is:

```properties
spring.datasource.url=jdbc:mysql://mysql:3306/test
```

This implies the application expects to run inside a Docker network where the database container is accessible via the hostname `mysql`.

### Database Credentials
*   **Username**: `nila`
*   **Password**: `1234`
*   **Database Name**: `test`

## How to Run

### 1. Using Docker Compose (Recommended)
Since the app depends on a specific database host, running with Docker Compose is the easiest method. Ensure you have a `docker-compose.yml` that defines both the `app` and `mysql` services.

```bash
docker-compose up --build
```

### 2. Local Development
If you want to run this locally (outside of Docker) via your IDE:
1.  Ensure a MySQL instance is running on `localhost:3306`.
2.  Update `application.properties` temporarily:
    ```properties
    spring.datasource.url=jdbc:mysql://localhost:3306/test
    ```
3.  Run the main Spring Boot application class.

## API Endpoints

Once the server is running, the API is accessible at:
`http://localhost:6061/students` Students List
`http://localhost:6061/students/add` Add new student (default value) 