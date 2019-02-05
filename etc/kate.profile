# Firejail profile for kate
# Description: Powerful text editor
# This file is overwritten after every install/update
# Persistent local customizations
include kate.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/katemetainfos
noblacklist ${HOME}/.config/katepartrc
noblacklist ${HOME}/.config/katerc
noblacklist ${HOME}/.config/kateschemarc
noblacklist ${HOME}/.config/katesyntaxhighlightingrc
noblacklist ${HOME}/.config/katevirc
noblacklist ${HOME}/.local/share/kate

include disable-common.inc
# include disable-devel.inc
# include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

include whitelist-var-common.inc

# apparmor
caps.drop all
# net none
# nodbus
netfilter
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none
tracelog

# private-bin kate,kbuildsycoca4,kdeinit4
private-dev
# private-etc fonts,kde4rc,kde5rc,ld.so.cache,machine-id,xdg
private-tmp

# noexec ${HOME}
noexec /tmp

join-or-start kate
