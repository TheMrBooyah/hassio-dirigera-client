ARG BUILD_FROM
FROM $BUILD_FROM

ARG BUILD_ARCH

ARG DIRIGERA_VERSION

RUN apt update -y \
    && apt install openjdk-17-jre -y \
    && java --version \
    && mkdir "dirigera" \
    && curl -s -L -o dirigera-client-mqtt.jar "https://github.com/dvdgeisler/DirigeraClient/releases/download/v${DIRIGERA_VERSION}/dirigera-client-mqtt.jar"

COPY ./rootfs /