version 1.0

task Checkqcws {
  input {
    Int? port
    File? config
    File? log_config
    Boolean? debug
    String monitor_path
  }
  command <<<
    checkqc_ws \
      ~{monitor_path} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(log_config) then ("--log_config " +  '"' + log_config + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    port: "Port which checkqc-ws will listen to (default: 9999)."
    config: "Path to the checkQC configuration file (optional)"
    log_config: "Path to the checkQC logging configuration file (optional)"
    debug: "Enable debug mode."
    monitor_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}