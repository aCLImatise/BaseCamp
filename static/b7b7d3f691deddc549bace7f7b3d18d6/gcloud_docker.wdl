version 1.0

task GcloudDocker {
  input {
    Boolean? authorize_only
    File? docker_host
    String? server
    String registry
    String directly_dot
  }
  command <<<
    gcloud docker \
      ~{registry} \
      ~{directly_dot} \
      ~{if (authorize_only) then "--authorize-only" else ""} \
      ~{if defined(docker_host) then ("--docker-host " +  '"' + docker_host + '"') else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""}
  >>>
  parameter_meta {
    authorize_only: "Configure docker authorization only, do not launch the docker\\ncommand-line."
    docker_host: "The URL to connect to Docker Daemon. Format: tcp://host:port or\\nunix:///path/to/socket."
    server: ",[SERVER,...], -s SERVER,[SERVER,...]; default=\\\"gcr.io,us.gcr.io,eu.gcr.io,asia.gcr.io,l.gcr.io,launcher.gcr.io,us-mirror.gcr.io,eu-mirror.gcr.io,asia-mirror.gcr.io,mirror.gcr.io\\\"\\nThe address of the Google Cloud Registry."
    registry: "SYNOPSIS"
    directly_dot: "More information on Google Container Registry can be found here:"
  }
  output {
    File out_stdout = stdout()
  }
}