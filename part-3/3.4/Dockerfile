FROM docker:latest

WORKDIR /usr/src/app

COPY builder.sh .

RUN chmod 755 /usr/src/app/builder.sh

ENTRYPOINT ["./builder.sh"]
