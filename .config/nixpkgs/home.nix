{ pkgs, ... }:

{
  home.packages = with pkgs; [
    atom
    chromium
    firefox
    gimp
    # gitFull
    gnumake
    gnupg
    htop
    imagemagick
    # inkscape
    jq
    pass
    unzip
    vagrant
    vlc
    zip
  ];

  home.sessionVariables.LANG = "en_US.UTF-8";
  home.sessionVariables.LC_ALL = "fi_FI.UTF-8";

  programs.bash = {
    enable = true;
  #  enableCompletion = true;
  };

  #programs.git = {
  #  enable = true; # @TODO
  #};

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    history = {
      ignoreDups = true;
      path = ".zhs_history";
      share = false;
    };
    initExtra = ''
      bindkey -e
      bindkey "^[[1;5C" forward-word
      bindkey "^[[1;5D" backward-word
      export EDITOR=nano;
      export SPACESHIP_PROMPT_ORDER=(
        time          # Time stampts section
        user          # Username section
        dir           # Current directory section
        host          # Hostname section
        git           # Git section (git_branch + git_status)
        # hg            # Mercurial section (hg_branch  + hg_status)
        # package       # Package version
        node          # Node.js section
        ruby          # Ruby section
        elixir        # Elixir section
        # xcode         # Xcode section
        # swift         # Swift section
        golang        # Go section
        php           # PHP section
        rust          # Rust section
        haskell       # Haskell Stack section
        # julia         # Julia section
        docker        # Docker section
        # aws           # Amazon Web Services section
        venv          # virtualenv section
        # conda         # conda virtualenv section
        pyenv         # Pyenv section
        # dotnet        # .NET section
        # ember         # Ember.js section
        kubecontext   # Kubectl context section
        exec_time     # Execution time
        line_sep      # Line break
        battery       # Battery level and status
        # vi_mode       # Vi-mode indicator
        jobs          # Background jobs indicator
        exit_code     # Exit code section
        char          # Prompt character
      )
      export SPACESHIP_EXIT_CODE_SHOW=true
      export SPACESHIP_DIR_TRUNC=0
      export SPACESHIP_DIR_TRUNC_REPO=false
    '';
    plugins = [
      {
        name = "spaceship";
        file = "spaceship.zsh";
        src = pkgs.fetchgit {
          url = "https://github.com/denysdovhan/spaceship-prompt";
          rev = "v3.2.0";
          sha256 = "1x4cqlcm985lcy1q9fqh1dd6dj0gvnr58jz7l416h7mr4a5b2r9m";
        };
      }
    #  {
    #    name = "zplug";
    #    file = "init.zsh";
    #    src = pkgs.fetchgit {
    #      url = "https://github.com/zplug/zplug";
    #      rev = "2.4.2";
    #      sha256 = "0hci1pbs3k5icwfyfw5pzcgigbh9vavprxxvakg1xm19n8zb61b3";
    #    };
    #  }
    ];
  };

  programs.home-manager = {
    enable = true;
    path = "https://github.com/rycee/home-manager/archive/master.tar.gz";
  };

  #services.gpg-agent = {
  #  enable = true;
  #  defaultCacheTtl = 1800;
  #  enableSshSupport = true;
  #  grabKeyboardAndMouse = true;
  #  # enableScDaemon = true; # @TODO ?
  #};

  services.redshift = {
    enable = true;
    latitude = "62.14";
    longitude = "25.44";
  };
}
