{ pkgs, ... }:

{
  # https://devenv.sh/basics/
  env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = [pkgs.python3Packages.mysqlclient];

  # https://devenv.sh/scripts/
  scripts.hello.exec = "echo hello from $GREET";

  enterShell = ''
    hello
    git --version
  '';

  # https://devenv.sh/languages/
  languages.python.enable = true;
  languages.python.poetry.enable = true;
  languages.python.poetry.install.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";

  services.mysql = {
    enable = true;
    ensureUsers = [{name = "user"; password = "password";}];
    initialDatabases = [{name = "sample";}];
  };

  # See full reference at https://devenv.sh/reference/options/
}
