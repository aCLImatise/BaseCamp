version 1.0

task RefgenieserverServe {
  input {
    File? config
    Boolean? dbg
    String? port
  }
  command <<<
    refgenieserver serve \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (dbg) then "--dbg" else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""}
  >>>
  parameter_meta {
    config: "A path to the refgenie config file (YAML). If not\\nprovided, the first available environment variable\\namong: 'REFGENIE' will be used if set. Currently: not\\nset"
    dbg: "Set logger verbosity to debug"
    port: "The port the webserver should be run on."
  }
  output {
    File out_stdout = stdout()
  }
}