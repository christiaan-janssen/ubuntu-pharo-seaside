FROM shidima/ubuntu-pharo:0.0.4


ADD ./install-seaside.st /home/install-seaside.st
RUN ./pharo Pharo.image ./install-seaside.st