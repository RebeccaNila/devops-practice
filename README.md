# DevOps Practice Project

This project is designed to practice DevOps concepts including Docker, Kubernetes, and CI/CD pipelines using a Spring Boot application.

## Project Structure

The project is organized as follows:

*   `src/`: Java Spring Boot source code.
*   `docker/`: Contains Docker-related configuration files.
    *   `Dockerfile`: Instructions to build the application image.
    *   `docker-compose.yml`: Compose file to run the application and dependencies (MySQL).
*   `kubernetes/`: Contains Kubernetes manifests.
    *   `pod.yml`: Pod definition for the application.
*   `pom.xml`: Maven build configuration.

## Tech Stack

*   **Java**: 21
*   **Framework**: Spring Boot
*   **Database**: MySQL
*   **Build Tool**: Maven
*   **Containerization**: Docker
*   **Orchestration**: Kubernetes

## Getting Started

### 1. Build the Application

```bash
./mvnw clean package
```

### 2. Docker

The `docker` directory contains the necessary files to containerize the application.

**Build and Run with Docker Compose:**

```bash
docker-compose -f docker/docker-compose.yml up --build
```

**Build Image Manually:**

```bash
docker build -t devops-practice -f docker/Dockerfile .
```

### 3. Kubernetes

The `kubernetes` directory contains manifests for deploying to a cluster.

**Deploy Pod:**

```bash
kubectl apply -f kubernetes/pod.yml
```

### 4. Local Development

To run locally without containers:
1.  Ensure MySQL is running on `localhost:3306`.
2.  Update `src/main/resources/application.properties` to point to `localhost` if necessary.
3.  Run the application via IDE or Maven.

## Configuration

The application connects to a MySQL database.
*   **Default URL**: `jdbc:mysql://mysql:3306/test` (Expects a container named `mysql` in the same network)
*   **Credentials**: User `nila`, Password `1234`

## API Endpoints

*   List Students: `http://localhost:6061/students`
*   Add Student: `http://localhost:6061/students/add`
