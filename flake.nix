{

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixpkgs-22_11.url = "github:nixos/nixpkgs/nixos-22.11";
    home-manager-22_11 = {
      url = "github:nix-community/home-manager/release-22.11";
      inputs.nixpkgs.follows = "nixpkgs-22_11";
    };

    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-22.05";
    home-manager-stable = {
      url = "github:nix-community/home-manager/release-22.05";
      inputs.nixpkgs.follows = "nixpkgs-stable";
    };

  };

  outputs = inputs: {

    templates = {

      haskell = {
        path = ./templates/haskell;
        description = "Haskell Project Template";
      };

    };

  };

}
