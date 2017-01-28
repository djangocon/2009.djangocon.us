.PHONY: all

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-24s\033[0m %s\n", $$1, $$2}'

.PHONY: download
download:  ## To backup DjangoCon US 2009
	@echo "The 2009 US website is broken :/ "

	@wayback_machine_downloader \
		http://www.djangocon.org/ \
		--directory . \
		--from 20090213001540 \
		--to 20100309102530
