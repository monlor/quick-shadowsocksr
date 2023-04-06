FROM winterssy/shadowsocksr:latest

EXPOSE 38686

COPY ./entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ ]