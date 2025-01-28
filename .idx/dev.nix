# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-24.05"; # or "unstable"

  packages = [
    pkgs.rustup
    pkgs.cargo
    pkgs.rust-analyzer
    pkgs.gcc
    pkgs.pkg-config
    pkgs.openssl
  ];

  env = {};
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
        "hbenl.vscode-test-explorer"
        "ms-vscode.test-adapter-converter"
        "pinage404.rust-extension-pack"
        "rust-lang.rust-analyzer"
        "serayuzgur.crates"
        "Swellaby.vscode-rust-test-adapter"
    ];
  };
}
