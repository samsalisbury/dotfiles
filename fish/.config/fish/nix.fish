if test -d "$HOME/.nix-profile"
  set NIX_LINK "$HOME/.nix-profile"

  # Set the default profile.
  if not [ -L "$NIX_LINK" ];
    echo "creating $NIX_LINK" >&2
    set -l _NIX_DEF_LINK /nix/var/nix/profiles/default
    /run/current-system/sw/bin/ln -s "$_NIX_DEF_LINK" "$NIX_LINK"
  end

  set PATH $NIX_LINK/bin $NIX_LINK/sbin $PATH
  set MANPATH $NIX_LINK/share/man $MANPATH

  # Subscribe the user to the Nixpkgs channel by default.
  if [ ! -e $HOME/.nix-channels ];
    echo "https://nixos.org/channels/nixpkgs-unstable nixpkgs" > $HOME/.nix-channels
  end

  # Append ~/.nix-defexpr/channels/nixpkgs to $NIX_PATH so that
  # <nixpkgs> paths work when the user has fetched the Nixpkgs
  # channel.
  if test -n $NIX_PATH;
    set NIX_PATH {$NIX_PATH}:nixpkgs=$HOME/.nix-defexpr/channels/nixpkgs
  else
    set NIX_PATH nixpkgs=$HOME/.nix-defexpr/channels/nixpkgs
  end

  set SSL_CERT_FILE /etc/ssl/certs/ca-certificates.crt
end
