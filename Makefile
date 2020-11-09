-include .env

##@ Development commands

help: ## Show this help
	@awk 'BEGIN {FS = ":.*##"; printf "Usage: make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

install: ## Install dependencies in a virtualenv
	pipenv install --dev

freeze: ## Freeze requirements version for distribution
	pipenv lock -r > requirements

##@ Deployment commands

patch: ## Deploy a new patch version of this package
	pipenv run bump2version patch

minor: ## Deploy a new minor version of this package
	pipenv run bump2version minor

major: ## Deploy a new patch version of this package
	pipenv run bump2version major