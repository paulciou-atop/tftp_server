FROM ubuntu

RUN apt-get update
RUN apt-get install -y xinetd tftpd tftp
# your tftp server storage folder
RUN mkdir /var/lib/tftpboot
VOLUME /var/lib/tftpboot
# put your tftp config
COPY ./tftp /etc/xinetd.d/tftp
EXPOSE 69/udp

RUN chmod 777 /var/lib/tftpboot && chown -R nobody /var/lib/tftpboot
RUN service xinetd restart
COPY ./service.sh /
ENTRYPOINT ["/bin/sh","/service.sh"]


