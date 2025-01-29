{
    description = "Development environment for ONO";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/23.05";
    };

    outputs = { self, nixpkgs, ... }:
    let
        system = "x86_64-linux";
        pkgs = import nixpkgs { inherit system; };
    in {
        devShells = {
            x86_64-linux = {
                default = pkgs.mkShell {
                    packages = with pkgs; [
                        git  # Version control
                        rustc cargo rust-analyzer clippy rustfmt rustup # Rust packages
                        direnv nix-direnv # Nix autorun configuration files
                    ];

                    shellHook = ''eval "$(direnv hook bash)" && echo "Ono's nix development ambience done"'';
                };
            };
        };
    };
}
