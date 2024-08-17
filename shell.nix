{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  allowUnfree = true;
  name = "www-frontend";
  packages = with pkgs; [
    pnpm
    rubyPackages.htmlbeautifier
    htmx-lsp
  ];
  shellHook = ''
    export PATH="./node_modules/.bin/:$PATH"
  '';
}
