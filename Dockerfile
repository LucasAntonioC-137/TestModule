FROM golang:1.21

RUN apt-get update && apt-get install -y \
zsh \
git \
curl

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

SHELL ["/bin/zsh", "-c"]

EXPOSE 8080

CMD ["zsh"]