{
    description = "Development environment for ONO";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/23.05";
        nodejs = {
            url = "github:nodejs/node";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { self, nixpkgs, nodejs, ... }:
    let
        system = "x86_64-linux";
        pkgs = import nixpkgs { inherit system; };
    in {
        devShells = {
            x86_64-linux = {
                default = pkgs.mkShell {
                    packages = with pkgs; [
                        rustc cargo rust-analyzer clippy rustfmt rustup # Rust packages
                        prettier # Adicionar prettier
                    ];

                    buildInputs = [
                        nodejs
                        (pkgs.runCommand "husky" {} ''
                            mkdir -p $out
                            cd $out
                            npm install husky lint-staged --save-dev
                        '')
                    ];

                    shellHook = ''
                        echo "Ono's nix development ambience done"
                        npm run install:hooks
                    '';
                };
            };
        };
    };
}
