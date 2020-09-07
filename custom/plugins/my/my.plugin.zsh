#!/usr/bin/env zsh

#-----------------------------------------------------------------------------------------------------------------------
# System
#-----------------------------------------------------------------------------------------------------------------------
alias sys.reboot=sys_reboot
sys_reboot() {
  sudo reboot
}

alias sys.shutdown=sys_shutdown
sys_shutdown() {
  sudo shutdown now
}

alias sys.update=ubuntu_update
ubuntu_update() {
  sudo apt-get update -y
  sudo apt-get upgrade -y
  sudo apt-get dist-upgrade -y
  sudo apt-get autoremove -y
}

alias sys.info=ubuntu_info
ubuntu_info() {
  lsb_release -a
}

#-----------------------------------------------------------------------------------------------------------------------
# Docker
#-----------------------------------------------------------------------------------------------------------------------
alias docker.clean=docker_clean
docker_clean() {
  sudo docker system prune -f
}

alias docker.clean.force=docker_clean_force
docker_clean_force() {
  sudo docker system prune -a -f
}

alias docker.restart=docker_restart
docker_restart() {
  sudo systemctl restart docker.service
}
