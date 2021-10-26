FROM amp-build-deps-amd:1.3

RUN \
	mkdir /usr/share/Ampnado && \
	chmod -R 0755 /usr/share/Ampnado

COPY ampnado /usr/share/Ampnado/

COPY ampnado/static/images/noartpic.jpg /usr/share/Ampnado/static/images/

CMD [ "python3", "/usr/share/Ampnado/ampnado.py" ]