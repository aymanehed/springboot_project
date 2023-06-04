FROM adoptopenjdk/openjdk11
ADD target/classes /classes
COPY target/ecommerce.jar ecommerce.jar
ADD backend/main/resources/application.properties /opt/application.properties
EXPOSE 8080
ENTRYPOINT ["java","-jar","ecommerce.jar","--spring.config.location=file:/opt/application.properties"]