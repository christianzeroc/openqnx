#
# Copyright 2004, QNX Software Systems Ltd. All Rights Reserved.
#
# This source code may contain confidential information of QNX Software
# Systems Ltd.  (QSSL) and its licensors. Any use, reproduction,
# modification, disclosure, distribution or transfer of this software,
# or any software which includes or is based upon any of this code, is
# prohibited unless expressly authorized by QSSL by written agreement. For
# more information (including whether this source code file has been
# published) please email licensing@qnx.com.
#
ifndef QCONFIG
QCONFIG=qconfig.mk
endif
include $(QCONFIG)

define PINFO
PINFO NAME=fuser
PINFO DESCRIPTION=List processes with open files \(POSIX\)
endef

INSTALLDIR=$(firstword $(INSTALLDIR_$(OS)) sbin)

USEFILE=$(PROJECT_ROOT)/$(NAME).c

include $(MKFILES_ROOT)/qtargets.mk
