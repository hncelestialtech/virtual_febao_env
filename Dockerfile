FROM centos:7

WORKDIR /home/febao

RUN yum update -y

RUN yum install -y mysql-server mysql

RUN useradd -m -d /home/febao febao

RUN chown -R febao:febao /home/febao

ADD 2.15.3.tar.gz /home/febao/

ADD febao_deploy.tar.gz /home/febao/

ADD flyway-5.2.4.tar.gz /home/febao/

