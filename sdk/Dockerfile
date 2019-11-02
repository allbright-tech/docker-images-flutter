FROM cirrusci/flutter:latest

LABEL key="Flutter + Fastlane + Node 10.x"

USER root

#
RUN apt-get update -qq > /dev/null && \
    apt-get install -y ruby \
    gpg-agent

# Install node
ENV NODE_VERSION="10.x"

RUN curl -sL -k https://deb.nodesource.com/setup_10.x \
        | bash - > /dev/null


RUN apt-get install -qq nodejs > /dev/null && \
    apt-get clean > /dev/null && \
    rm -rf /var/lib/apt/lists/ && \
    npm install --quiet -g npm > /dev/null


# Install Fastlane
RUN apt-get install -y ruby

RUN echo "Installing Fastlane" && \
  gem install fastlane --quiet --no-document > /dev/null && \
  gem install bundler --quiet --no-document > /dev/null

# Install Firebase CLI
RUN npm install -g firebase-tools