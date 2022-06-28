FROM gitpod/workspace-mysql

RUN curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
RUN echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | \
    tee -a /etc/apt/sources.list.d/elastic-7.x.list
RUN apt update
RUN apt install elasticsearch -y
RUN systemctl start elasticsearch
RUN systemctl enable elasticsearch