{
  description = "Flake that copies a local file to the result";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  outputs = { self, nixpkgs }: {
    my-container =
      let pkgs = (import nixpkgs) { system = "x86_64-linux"; };
      in pkgs.dockerTools.buildLayeredImage {
        name = "demo-image";
        tag  = "fixed-for-demo-purposes";
        
        # https://github.com/dotnet/runtime/issues/119216
        contents = [
          (pkgs.writeTextDir "data/response" "default response from the server")
        ];

        config = {
          Cmd = [
            "${pkgs.php}/bin/php"
            "-S"
            "0.0.0.0:8080"
            "${./server.php}"
          ];
          Healthcheck = {
           Test = [
             "CMD"
             "${pkgs.curl}/bin/curl"
             "--fail"
             "http://127.1:8080/"
           ];
           Interval = 30000000000;
           Timeout = 10000000000;
           Retries = 3;
          };
          Volumes = {
            "/data" = {};
            "/config" = {};
          };
        };
      };
  };
}