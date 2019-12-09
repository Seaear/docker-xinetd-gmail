FROM debian:stable-slim

RUN \
  apt-get update && \
  apt-get -y install --no-install-recommends \
    xinetd \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

ADD ./gmail /etc/xinetd.d/

EXPOSE 465 587 993

ENTRYPOINT [ "xinetd", "-dontfork" ]
