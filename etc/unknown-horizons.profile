# Firejail profile for unknown-horizons
# Description: 2D realtime strategy simulation
# This file is overwritten after every install/update
# Persistent local customizations
include unknown-horizons.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.unknown-horizons

include disable-common.inc
include disable-passwdmgr.inc
include disable-programs.inc

mkdir ${HOME}/.unknown-horizons
whitelist ${HOME}/.unknown-horizons
include whitelist-common.inc

caps.drop all
nodvd
nogroups
nonewprivs
noroot
notv
nou2f
protocol unix,netlink,inet,inet6
seccomp
shell none

# private-bin unknown-horizons
private-dev
# private-etc ca-certificates,ssl,pki,crypto-policies
private-tmp
