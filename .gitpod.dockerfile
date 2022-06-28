FROM gitpod/workspace-mysql

RUN curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch | \
    sudo apt-key add -
RUN echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | \
    sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
RUN sudo apt update
RUN sudo apt install elasticsearch -y
RUN sudo service elasticsearch start
RUN sudo service elasticsearch enable