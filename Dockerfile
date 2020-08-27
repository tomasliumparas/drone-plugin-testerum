
FROM ubuntu

ENV PATH=/usr/local/testerum/runner/bin:$PATH

RUN apt-get update && \
    apt-get install -y wget && \
    apt-get clean all && \
    mkdir /usr/local/testerum && \
    wget -O - https://testerum.com/download/testerum-linux-3.1.20.tar.gz | tar -xzf - -C /usr/local/testerum

#/ # ls /usr/local/bin/testerum/runner/bin/testerum-runner.sh
#/usr/local/bin/testerum/runner/bin/testerum-runner.sh


COPY /root/ /
RUN ls /
RUN ls /usr/local/bin

ENTRYPOINT ["build.sh"]
