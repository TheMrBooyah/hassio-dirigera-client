ARG BUILD_FROM
FROM $BUILD_FROM

ARG BUILD_ARCH

RUN apk install openjdk17-jre \
    && java --version

COPY ./dirigera-client-mqtt/target/dirigera-client-mqtt.jar /dirigera
COPY ./rootfs /
