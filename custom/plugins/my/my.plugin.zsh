#!/usr/bin/env zsh

# ubuntu
alias update=update_ubuntu

update_ubuntu() {
  sudo apt-get update -y
  sudo apt-get upgrade -y
  sudo apt-get dist-upgrade -y
  sudo apt-get autoremove -y
}

# docker
alias docker-clean=docker_clean

docker_clean() {
  sudo docker system prune -a -f
}
