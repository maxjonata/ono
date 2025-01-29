{
    description = "Development environment for ONO";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/23.05";
    };

    outputs = { self, nixpkgs, }: {
        devShells.default = nixpkgs.lib.mkShell {
            packages = with nixpkgs; [
                git  # Version control
                rustc cargo rust-analyzer clippy rustfmt rustup # Rust packages
                direnv nix-direnv # Nix autorun configuration files
            ];

            shellHook = ''
                eval "$(direnv hook bash)" && echo "Ono's nix development ambience done"
            '';
        };
    };
}
