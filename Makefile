DKR ?= $(shell which docker)
DKR_BUILD_OPTS ?=
DKR_REGISTRY   ?= gitlab-cr.zaark.net
DKR_REPO       ?= $(shell basename $(PWD))
DKR_NAME       ?= $(DKR_REPO)
DKR_TAG        ?= latest

DKR_IMAGE      := $(strip $(DKR_NAME)):$(strip $(DKR_TAG))
DKR_NAMESPACE  := $(strip $(DKR_REGISTRY))/docker

.PHONY: build push

build:
	$(DKR) build $(DKR_BUILD_OPTS) -t $(DKR_IMAGE) .

push: build
	$(DKR) tag $(DKR_IMAGE) $(DKR_NAMESPACE)/$(DKR_IMAGE)
	$(DKR) push $(DKR_NAMESPACE)/$(DKR_IMAGE)
