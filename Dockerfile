FROM maven:latest
WORKDIR /Calculator
COPY pom.xml /Calculator
COPY . /Calculator/
RUN mvn package
CMD ["java", "-jar", "target/calculator.jar"]