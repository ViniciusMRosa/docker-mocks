FROM openjdk:8u181-jre
RUN mkdir -p /app/wiremock/loki
COPY wiremock-standalone-2.18.0.jar /app/wiremock/
RUN echo "'java -jar /app/wiremock/wiremock-standalone-2.18.0.jar --port 8080 \  
--record-mappings --global-response-templating --root-dir loki/\n\
'" >> entrypoint.sh && chmod +x entrypoint.sh
EXPOSE 8080
