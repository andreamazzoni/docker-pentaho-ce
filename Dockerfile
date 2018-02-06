FROM openjdk:latest

MAINTAINER Andrea Mazzoni <andreamazzoni78@gmail.com>

RUN useradd -ms /bin/bash pentaho

USER pentaho:pentaho

WORKDIR /home/pentaho

RUN wget --progress=dot:giga \
	https://sourceforge.net/projects/pentaho/files/Pentaho%208.0/server/pentaho-server-ce-8.0.0.0-28.zip/download \
	-O pentaho-server-ce-8.0.0.0-28.zip && \
	unzip -q pentaho-server-ce-8.0.0.0-28.zip && \
	rm -f pentaho-server-ce-8.0.0.0-28.zip && \
	rm pentaho-server/promptuser.sh

EXPOSE 8080

CMD bash