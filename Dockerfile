FROM openjdk:17-jdk
EXPOSE 8080
WORKDIR /app

ADD ./build/libs/jupiter-0.0.1-SNAPSHOT.jar /app/jupiter.jar

# COPY src/main/resources/cns/softhsm/config.properties /app
# COPY src/main/resources/cns/framework-config.properties /app
# COPY src/main/resources/cns/crypto-config /app/resources/crypto-config
# COPY src/main/resources/cns/network_configs /app/resources/network_configs

ENTRYPOINT ["java", "-jar", "jupiter.jar"]
