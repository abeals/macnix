{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    direnv
    emacs29
    gh
    git
    google-cloud-sdk
    gnupg
    htop
    jira-cli-go
    nodejs # for copilot
    postgresql
    tree
    vscode
    wget
  ];

  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = false;
    };

    taps = [
      "homebrew/cask"
      "homebrew/cask-fonts"
      "homebrew/services"
      "homebrew/cask-versions"
    ];

    # `brew install`
    brews = [
    ];

    # `brew install --cask`
    casks = [
      "1password"
      "brave-browser"
      "cron"
      "firefox"
      "iterm2"
      "keepassxc"
      "mimestream"
      "obsidian"
      "slack"
      "zoom"
    ];
  };
}
