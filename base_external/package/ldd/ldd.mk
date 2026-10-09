################################################################################
#
# ldd
#
################################################################################

LDD_VERSION = 011cfe47c912d12bbaea55516e3303322f906b78
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-sawa9885.git
LDD_SITE_METHOD = git
LDD_MODULE_SUBDIRS = misc-modules scull
LDD_LICENSE = Dual BSD/GPL

$(eval $(kernel-module))
$(eval $(generic-package))
