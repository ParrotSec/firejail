# Firejail profile for standardnotes-desktop
# This file is overwritten after every install/update
# Persistent local customizations
include standardnotes-desktop.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/Standard Notes Backups
noblacklist ${HOME}/.config/Standard Notes

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/Standard Notes Backups
mkdir ${HOME}/.config/Standard Notes
whitelist ${HOME}/Standard Notes Backups
whitelist ${HOME}/.config/Standard Notes
include whitelist-var-common.inc

apparmor
caps.drop all
netfilter
machine-id
nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
protocol unix,inet,inet6,netlink
seccomp

disable-mnt
private-dev
private-tmp
private-etc ca-certificates,fonts,host.conf,hostname,hosts,resolv.conf,ssl,pki,crypto-policies,xdg

noexec ${HOME}
noexec /tmp
