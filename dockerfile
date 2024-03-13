FROM ubuntu:24.04
# install sdkman
RUN apt-get update
RUN apt-get install -y \
    unzip \
    zip \
    curl
RUN curl -s "https://get.sdkman.io" | bash
RUN source "$HOME/.sdkman/bin/sdkman-init.sh"

# install java
RUN sdk i java 23.ea.8-open

# install kotlin
RUN sdk i kotlin 1.9.22