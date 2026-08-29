{
  description = "NixOS configuration with Noctalia";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    noctalia = {
      url = "github:noctalia-dev/noctalia";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, ... }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        # ... other modules
	./configuration.nix
	./hardware-configuration.nix
        ./noctalia.nix
        ./apps.nix
        ./development.nix
        ./system-tools.nix
      ];
    };
  };
}






































