HOSTNAME=delorean

.PHONY: deploy
deploy:
	nix build .#darwinConfigurations.$(HOSTNAME).system --extra-experimental-features 'nix-command flakes'
	sudo ./result/sw/bin/darwin-rebuild switch --flake .#$(HOSTNAME)


.PHONY: update
update:
	nix flake update

.PHONY: upgrade
upgrade: update deploy

.PHONY: fmt
fmt:
	nix fmt

.PHONY: clean
clean:
	rm -rf result
