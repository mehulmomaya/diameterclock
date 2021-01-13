FROM openjdk:8
ADD target/diameterclock-0.0.1-SNAPSHOT.jar diameterclock-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "diameterclock-0.0.1-SNAPSHOT.jar"]