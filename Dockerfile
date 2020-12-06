FROM java:8
EXPOSE 8080

VOLUME /tmp

COPY /target/gateway.jar app.jar

ENV JAVA_OPTS="-Xmx128m -Xms64m"
ENV SPRING_PROFILES_ACTIVE="kubernetes"

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar"]