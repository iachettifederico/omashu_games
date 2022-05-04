# FROM ruby:3.1.0-alpine
FROM ruby:3.1.2-alpine

RUN apk update && apk upgrade && apk add --no-cache zsh bash git build-base tzdata libxml2-dev npm nodejs yarn curl openssl less entr

RUN npm install -g esbuild

ARG BUNDLER_VERSION
RUN gem install bundler --no-document -v $BUNDLER_VERSION

RUN gem install pessimize

ARG USERNAME=developer
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN addgroup $USERNAME -g $USER_GID \
    && adduser $USERNAME -D -h /home/$USERNAME -u $USER_UID -G $USERNAME

USER $USERNAME

WORKDIR /home/$USERNAME

COPY .devcontainer/omashu_games-load-profile.sh /etc/profile.d
COPY .devcontainer/.zshrc /home/$USERNAME/
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)"


WORKDIR /workspace

EXPOSE 3000
