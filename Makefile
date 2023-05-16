# var
MODULE  = $(notdir $(CURDIR))
module  = $(shell echo $(MODULE) | tr A-Z a-z)
OS      = $(shell uname -o|tr / _)
NOW     = $(shell date +%d%m%y)
REL     = $(shell git rev-parse --short=4 HEAD)
BRANCH  = $(shell git rev-parse --abbrev-ref HEAD)
CORES  ?= $(shell grep processor /proc/cpuinfo | wc -l)
# version
NODE_VER = 16

# dirs
CWD = $(CURDIR)
BIN = $(CWD)/bin
DOC = $(CWD)/doc
LIB = $(CWD)/lib
SRC = $(CWD)/src
TMP = $(CWD)/tmp
GZ  = $(HOME)/gz
FW  = $(CWD)/fw

# tool
CURL   = curl -L -o
CF     = clang-format

# src
J += $(shell find src -type f -regex .+.js$$)

# all
.PHONY: all
all:
	echo $(J)

