# To do stuff with make, you type `make` in a directory that has a file called
# "Makefile".  You can also type `make -f <makefile>` to use a different filename.
#
# A Makefile is a collection of rules. Each rule is a recipe to do a specific
# thing, sort of like a grunt task or an npm package.json script.
#
# A rule looks like this:
#
# <target>: <prerequisites...>
# 	<commands>
#
# The "target" is required. The prerequisites are optional, and the commands
# are also optional, but you have to have one or the other.
#
# Type `make` to show the available targets and a description of each.
#
.DEFAULT_GOAL := help
.PHONY: help
help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-25s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

##@ Utilities

large-files: ## show the 20 largest files in the repo
	@find . -printf '%s %p\n'| sort -nr | head -20

disk-usage: ## show the disk usage of the repo
	@du -h -d 2 .

git-sizer: ## run git-sizer
	@git-sizer --verbose

gc-prune: ## garbage collect and prune
	@git gc --prune=now

##@ Setup

install-node: ## install node
	@export NVM_DIR="$${HOME}/.nvm"; \
	[ -s "$${NVM_DIR}/nvm.sh" ] && . "$${NVM_DIR}/nvm.sh"; \
	nvm install --lts

nvm-ls: ## list node versions
	@export NVM_DIR="$${HOME}/.nvm"; \
	[ -s "$${NVM_DIR}/nvm.sh" ] && . "$${NVM_DIR}/nvm.sh"; \
	nvm ls

set-default-node: ## set default node
	@export NVM_DIR="$${HOME}/.nvm"; \
	[ -s "$${NVM_DIR}/nvm.sh" ] && . "$${NVM_DIR}/nvm.sh"; \
	nvm alias default node

install-pipx: ## install pipx (pre-requisite for external tools)
	@command -v pipx &> /dev/null || pip install --user pipx || true

install-copier: install-pipx ## install copier (pre-requisite for init-project)
	@command -v copier &> /dev/null || pipx install copier || true

install-poetry: install-pipx ## install poetry (pre-requisite for install)
	@command -v poetry &> /dev/null || pipx install poetry || true

install-poe: install-pipx ## install poetry (pre-requisite for install)
	@command -v poe &> /dev/null || pipx install poethepoet || true

install-commitzen: install-pipx ## install commitzen (pre-requisite for commit)
	@command -v cz &> /dev/null || pipx install commitizen || true

install-precommit: install-pipx ## install pre-commit
	@command -v pre-commit &> /dev/null || pipx install pre-commit || true

install-precommit-hooks: install-precommit ## install pre-commit hooks
	@pre-commit install

initialize: install-pipx ## initialize the project environment
	@pipx install copier
	@pipx install poethepoet
	@pipx install commitizen
	@pipx install pre-commit
	@pre-commit install

init-project: initialize ## initialize the project (Warning: do this only once!)
	@copier copy --trust --answers-file .copier-docker-config.yaml gh:entelecheia/hyperfast-docker-template .

reinit-project: install-copier ## reinitialize the project (Warning: this may overwrite existing files!)
	@bash -c 'args=(); while IFS= read -r file; do args+=("--skip" "$$file"); done < .copierignore; copier copy "$${args[@]}" --answers-file .copier-docker-config.yaml --trust gh:entelecheia/hyperfast-docker-template .'

##@ Docker

docker-login: ## login to docker
	@bash .docker/.docker-scripts/docker-compose.sh login

docker-build-base: ## build the docker base image
	@bash .docker/.docker-scripts/docker-compose.sh build --variant base

docker-build-app: ## build the docker app image
	@bash .docker/.docker-scripts/docker-compose.sh build --variant app

docker-config-base: ## show the docker base config
	@bash .docker/.docker-scripts/docker-compose.sh config --variant base

docker-config-app: ## show the docker app config
	@bash .docker/.docker-scripts/docker-compose.sh config --variant app

docker-push-base: ## push the docker base image
	@bash .docker/.docker-scripts/docker-compose.sh push --variant base

docker-push-app: ## push the docker app image
	@bash .docker/.docker-scripts/docker-compose.sh push --variant app

docker-run-base: ## run the docker base image
	@bash .docker/.docker-scripts/docker-compose.sh run --variant base

docker-run-app: ## run the docker app image
	@bash .docker/.docker-scripts/docker-compose.sh run --variant app

docker-up-app: ## launch the docker app image
	@bash .docker/.docker-scripts/docker-compose.sh up --variant app

docker-up-app-detach: ## launch the docker app image in detached mode
	@bash .docker/.docker-scripts/docker-compose.sh up --variant app --detach
