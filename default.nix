with import <nixpkgs> {};
stdenvNoCC.mkDerivation {
  name = "nix-zshell";

  script = substituteAll { 
    src = ./nix-zshell; 
    inherit zsh bashInteractive;
  };

  phases = ["installPhase"];

  installPhase = "install -D $script $out";
}
