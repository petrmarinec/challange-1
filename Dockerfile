FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y \
    openssh-server sudo
COPY ./entrypoint.sh /var/lib/entrypoint.sh
COPY ./bin/ttyd /usr/bin/ttyd
CMD /var/lib/entrypoint.sh
RUN chmod +x /var/lib/entrypoint.sh
RUN chmod +x /usr/bin/ttyd
RUN mkdir -p /home/student/ovoce
RUN touch /home/student/ovoce/rajce 
RUN touch /home/student/ovoce/okurka 
RUN touch /home/student/ovoce/paprika 
RUN touch /home/student/ovoce/mrkev 
COPY ./kontrola1.sh /home/student/ovoce/kontrola1.sh
RUN chmod +x /home/student/ovoce/kontrola1.sh
RUN mkdir -p /home/student/zelenina
RUN touch /home/student/zelenina/jahoda
RUN touch /home/student/zelenina/pomeranc
RUN touch /home/student/zelenina/malina
RUN touch /home/student/zelenina/tresen
COPY ./kontrola2.sh /home/student/zelenina/kontrola2.sh
RUN chmod +x /home/student/zelenina/kontrola2.sh
RUN mkdir /home/student/kos
RUN touch /home/student/kos/thrash1
RUN touch /home/student/kos/thrash2
RUN touch /home/student/kos/garbage
COPY ./kontrola3.sh /home/student/kos/kontrola3.sh
RUN chmod +x /home/student/kos/kontrola3.sh
RUN chmod -R g+rw /home/student/*