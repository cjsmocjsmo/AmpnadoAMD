FROM amp-build-deps-amd:1.3

RUN \
	mkdir /usr/share/Ampnado && \
	chmod -R 0755 /usr/share/Ampnado

COPY ampnado /usr/share/Ampnado/

RUN \
	openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 \
    -subj "/C=US/ST=Washington/L=PortOrchard/O=CharlieDis/CN=Charlie" \
    -keyout /usr/share/Ampnado/key.pem  -out /usr/share/Ampnado/cert.pem

COPY ampnado/static/images/noartpic.jpg /usr/share/Ampnado/static/images/

CMD [ "python3", "/usr/share/Ampnado/ampnado.py" ]