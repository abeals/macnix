{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    direnv
    #emacs29
    gh
    git
    google-cloud-sdk
    gnupg
    htop
    jira-cli-go
    #nodejs # for copilot
    postgresql
    tree
    #vscode
    wget
  ];

  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = false;
    };

    taps = [
      "homebrew/services"
      "hashicorp/tap"
    ];

    # `brew install`
    brews = [
      "hashicorp/tap/terraform"
    ];

    # `brew install --cask`
    casks = [
      "1password"
      "brave-browser"
      "docker-desktop"
      "emacs-app"
      "firefox"
      "iterm2"
      "keepassxc"
      "mimestream"
      "miro"
      "notion-calendar"
      "obsidian"
      "slack"
      "visual-studio-code"
      "zoom"
    ];
  };
}
