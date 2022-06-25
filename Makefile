VERSION := 0.0.3

all:

deps:
	brew install goreleaser/tap/goreleaser

release:
	git tag -a v$(VERSION) -m "v$(VERSION)"
	git push origin v$(VERSION)
	goreleaser release --rm-dist
