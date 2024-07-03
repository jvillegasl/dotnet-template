FROM mcr.microsoft.com/mssql/server:2022-latest

USER root

WORKDIR /usr/src/app

ARG ACCEPT_EULA
ARG SA_PASSWORD
ARG DB_NAME
ARG DB_USERNAME
ARG DB_PASSWORD

ENV ACCEPT_EULA=${ACCEPT_EULA}
ENV SA_PASSWORD=${SA_PASSWORD}
ENV DB_NAME=${DB_NAME}
ENV DB_USERNAME=${DB_USERNAME}
ENV DB_PASSWORD=${DB_PASSWORD}

COPY ./seed-init.sql ./
COPY ./seeder.sh ./
COPY ./init.sh ./
COPY ./entrypoint.sh ./

RUN apt update
RUN apt install -y gettext

RUN ./seeder.sh

EXPOSE 1433

CMD /bin/bash ./entrypoint.sh
