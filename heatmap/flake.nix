{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      python = pkgs.python3.withPackages (ps: with ps; [ pillow ]);
    in rec {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          python
          rtl-sdr
        ];
      };
    };
}
