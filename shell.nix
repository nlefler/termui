{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  name = "LibrarianEnv";
  buildInputs = [
    pkgs.go
    pkgs.gocode
    pkgs.gopls
    pkgs.goimports
    pkgs.gopkgs
    pkgs.godef
    pkgs.gcc
    pkgs.jq
    pkgs.mitmproxy
  ];
  shell-hook = ''
    go get gopkgs go-outline goplay dlv staticcheck gopl gorename
  '';
}
