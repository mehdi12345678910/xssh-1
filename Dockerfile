FROM devisty/xssh:v2

RUN apt-get update && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

EXPOSE 80

COPY . /
RUN chmod +x /start.sh
CMD ["/start.sh"]
