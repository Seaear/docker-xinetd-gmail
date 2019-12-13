FROM ubuntu:18.04
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      xinetd \
      lib32z1 \
      timelimit \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/
COPY ./gmail /etc/xinetd.d/gmail
EXPOSE 465 587 993
RUN useradd -u 8888 -m pwn
CMD ["xinetd", "-dontfork"]