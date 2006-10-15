# -*- Makefile -*-
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#
#                               Michael A.G. Aivazis
#                        California Institute of Technology
#                        (C) 1998-2004  All Rights Reserved
#
# <LicenseText>
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#

PROJECT = ins-data

# directory structure

#--------------------------------------------------------------------------
all: export
#

CP_RF = cp -rf
DEST_DIR = .
EXPORT_DATADIRS = \
    Lrmecs \
    Pharos \


RESOURCE_DEST =  $(EXPORT_MODULEDIR)/$(DEST_DIR)

export:: export-package-data

export-package-data:: $(EXPORT_DATADIRS)
	mkdir -p $(RESOURCE_DEST); \
	for x in $(EXPORT_DATADIRS); do { \
            if [ -d $$x ]; then { \
	        $(CP_RF) $$x $(RESOURCE_DEST); \
            } fi; \
        } done


# version
# $Id: Make.mm 788 2006-02-22 05:33:34Z linjiao $

# End of file
