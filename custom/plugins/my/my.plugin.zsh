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
  sudo apt-get update -y
  sudo apt-get upgrade -y
  sudo apt-get dist-upgrade -y
  sudo apt-get autoremove -y
}

# 同步时间
alias sys.ntp.update=ntp_update
ntp_update() {
  sudo ntpdate -u cn.pool.ntp.org
}

#-----------------------------------------------------------------------------------------------------------------------
# Docker
#-----------------------------------------------------------------------------------------------------------------------

# 清理docker
alias docker.clean=docker_clean
docker_clean() {
  sudo docker system prune -f
}

# 强制清理docker
alias docker.clean.force=docker_clean_force
docker_clean_force() {
  sudo docker system prune -a -f
}

# 重启docker服务
alias docker.restart=docker_restart
docker_restart() {
  sudo systemctl restart docker.service
}
