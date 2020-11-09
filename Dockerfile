FROM ubuntu

WORKDIR /opt/work
COPY rrshareweb /opt/work/rrshareweb
EXPOSE 3001

CMD [ "/opt/work/rrshareweb/rrshareweb" ]