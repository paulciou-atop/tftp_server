

## Before Start

I make a direcotry to save data in /var/lib/tftpboot

so I go to /var/lib and make a direcotry tftpboot 
## Start a TFTP server
You can run the command below to start a tftp server
```shell
docker run -d --rm -p 69:69/udp -v /var/lib/tftpboot:/var/lib/tftpboot tftp_server:v3
```



