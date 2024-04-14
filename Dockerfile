FROM amd64/openjdk:17-jdk-slim
WORKDIR /pandadaddy
COPY target/messaging-SNAPSHOT.jar /pandadaddy/app.jar
EXPOSE 8888
CMD ["java", "-Xms512m", "-Xmx1024m", "-XX:+UseG1GC", "-XX:ParallelGCThreads=4", "-XX:G1HeapRegionSize=4m", "-XX:MaxMetaspaceSize=256m", "-Dserver.port=8888", "-jar", "/pandadaddy/app.jar"]