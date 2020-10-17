#!/usr/bin/env zsh

#-----------------------------------------------------------------------------------------------------------------------
# System
#-----------------------------------------------------------------------------------------------------------------------

# 重启机器
alias sys.reboot=sys_reboot
sys_reboot() {
  sudo reboot
}

# 关闭机器
alias sys.shutdown=sys_shutdown
sys_shutdown() {
  sudo shutdown now
}

# 更新系统
alias sys.update=ubuntu_update
ubuntu_update() {
  sudo hwclock --hctosys
  sudo apt-get update -y
  sudo apt-get upgrade -y
  sudo apt-get dist-upgrade -y
  sudo apt-get autoremove -y
}

# 清理系统
alias sys.cleanup=ubuntu_cleanup
ubuntu_cleanup() {
  sudo journalctl --vacuum-time=3d &> /dev/null
}

# 同步时间
alias sys.ntp.update=ntp_update
ntp_update() {
  sudo ntpdate -u cn.pool.ntp.org
}

#-----------------------------------------------------------------------------------------------------------------------
# base64
#-----------------------------------------------------------------------------------------------------------------------
alias base64encode=base64_encode
base64_encode() {
  if [[ "1" != "$#" ]]; then
    return 1
  fi
  echo -n "$@" | base64
}

alias base64decode=base64_decode
base64_decode() {
  if [[ "1" != "$#" ]]; then
    return 1
  fi
  echo -n "$@" | base64 -d
}

#-----------------------------------------------------------------------------------------------------------------------
# Docker
#-----------------------------------------------------------------------------------------------------------------------

# 清理docker
alias docker.clean=docker_clean
docker_clean() {
  if [[ "$1" == "--force"  || "$1" == "-f" ]]; then
    sudo docker system prune -a -f
  else
    sudo docker system prune -f
  fi
}

# 重启docker服务
alias docker.restart=docker_restart
docker_restart() {
  sudo systemctl daemon-reload
  sudo systemctl restart docker.service
}
