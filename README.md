# Employee App (Spring Boot WAR)

This is a simple **Spring Boot application** packaged as a WAR file to be deployed on an **external Tomcat server**.

## Features
- Simple REST endpoint (`/hello`)
- Packaged as a WAR (for Tomcat)
- JUnit test included
- Configured with Maven

## Build & Run

### 1. Build project
```bash
mvn clean package
```

### 2. Deploy WAR to Tomcat
Copy the WAR file into Tomcat's `webapps/` directory:
```bash
cp target/employee-app-1.0.0.war /path/to/tomcat/webapps/
```

### 3. Start Tomcat
```bash
/path/to/tomcat/bin/startup.sh
```

### 4. Access Application
Open in browser:
```
http://localhost:8080/employee-app/hello
```

## Project Structure
```
employee-app/
 ├── pom.xml
 ├── src/
 │   ├── main/
 │   │   ├── java/com/example/employee/
 │   │   │   ├── EmployeeAppApplication.java
 │   │   │   └── controller/HelloController.java
 │   │   └── resources/application.properties
 │   └── test/java/com/example/employee/controller/HelloControllerTest.java
```

## License
This project is licensed under the MIT License.
