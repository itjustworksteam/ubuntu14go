FROM therickys93/ubuntu14
ADD . /golang
WORKDIR /golang
RUN bash install.sh
ENV GOROOT /root/.gvm/gos/go1.5
ENV PATH $PATH:$GOROOT/bin
