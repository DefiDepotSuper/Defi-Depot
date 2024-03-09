{ pkgs, ... }: {

# NOTE: This is an excerpt of a complete Nix configuration example.
# For more information about the dev.nix file in IDX, see
# https://developers.google.com/idx/guides/customize-idx-env

# Enable previews and customize configuration
idx.previews = {
  enable = true;
  previews = [
    # The following object sets web previews
    {
      command = [
        "npm"
        "run"
        "start"
        "--"
        "--port"
        "$PORT"
        "--host"
        "0.0.0.0"
        "--disable-host-check"
      ];
      id = "web";
      manager = "web";
    }
    # The following object sets Android previews
    {
      id = "android";
      manager = "android";
    }
  ];
};
