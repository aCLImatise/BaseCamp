version 1.0

task RefgenieserverServe {
  input {
    String? config
    Boolean? dbg
    String? port
  }
  command <<<
    refgenieserver serve \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--dbg" false="" dbg} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""}
  >>>
  parameter_meta {
    config: "A path to the refgenie config file (YAML). If not provided, the first available environment variable among: 'REFGENIE' will be used if set. Currently: not set"
    dbg: "Set logger verbosity to debug"
    port: "The port the webserver should be run on."
  }
}