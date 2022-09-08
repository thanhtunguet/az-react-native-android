#Base image
FROM ubuntu:20.04
# To make it easier for build and release pipelines to run apt-get,
# configure apt to not require confirmation (assume the -y argument by default)
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install apt-utils curl -y

RUN echo "APT::Get::Assume-Yes \"true\";" > /etc/apt/apt.conf.d/90assumeyes

COPY ./tools tools
COPY ./agent-env.sh .
COPY ./android.sh .

RUN chmod +x agent-env.sh
RUN chmod +x android.sh

RUN /bin/bash -c "source agent-env.sh"
RUN /bin/bash -i "/android.sh"

WORKDIR /azp

COPY ./start.sh .
RUN chmod +x start.sh
COPY cmake/ ./cmake/
RUN echo 'export PATH="/azp/cmake/bin:${PATH}"' > ~/.profile

CMD ["./start.sh"]
