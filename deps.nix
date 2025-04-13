with import <nixpkgs> {};
emacs30-nox.pkgs.withPackages (ps: with ps; [ htmlize ])
