FROM ubuntu:trusty

# Install curl
RUN apt-get update && \
    apt-get install -y vim curl jq default-jre && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists

# Install kafka client
ENV KAFKA_VER 0.11.0.1

RUN curl -L http://apache.mirrors.pair.com/kafka/${KAFKA_VER}/kafka_2.11-${KAFKA_VER}.tgz \
   -o /tmp/kafka-${KAFKA_VER}.tgz

RUN mkdir /tmp/kafka && \
    tar xzvf /tmp/kafka-${KAFKA_VER}.tgz -C /tmp/kafka --strip-components=1 && \
    rm -rf /tmp/kafka-${KAFKA_VER}.tgz

# Bash Configuration
RUN perl -pi -e 's/#force_color_prompt=yes/force_color_prompt=yes/g' ~/.bashrc

CMD ["/bin/bash"]
