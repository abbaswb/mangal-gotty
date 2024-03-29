FROM alpine:latest

ENV PS1 "\n\n> \W \$ "
ENV TERM=linux
ENV PACKAGES bash 

RUN apk --no-cache add $PACKAGES

ENV GOTTY_BINARY https://github.com/yudai/gotty/releases/download/v1.0.1/gotty_linux_386.tar.gz

RUN wget $GOTTY_BINARY -O gotty.tar.gz && \
    tar -xzf gotty.tar.gz -C /usr/local/bin/ && \
    rm gotty.tar.gz && \
    chmod +x /usr/local/bin/gotty

COPY /* /

COPY /mangal.toml /root/.config/mangal/mangal.toml

RUN tar zxf mangal.tar.gz

RUN rm /mangal.tar.gz

RUN echo "watch -n 3 ./mangal" >> /etc/profile.d/01auto.sh

EXPOSE 3030

ENTRYPOINT ["sh", "-c"]

CMD ["gotty --port ${PORT:-3030} --permit-write --reconnect bash -l"]
