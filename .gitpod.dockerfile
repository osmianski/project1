FROM gitpod/workspace-mysql

RUN curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch | \
    sudo apt-key add -
RUN echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | \
    sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
RUN sudo add-apt-repository ppa:ondrej/php
RUN sudo apt update
RUN sudo apt install -y elasticsearch php7.4-xdebug php8.1-xdebug
