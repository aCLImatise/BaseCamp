version 1.0

task Fsc {
  input {
    Boolean? ipv_four
    String? max_idle
    String? port
    Boolean? reset
    Boolean? server
    Boolean? shutdown
    String source_files
  }
  command <<<
    fsc \
      ~{source_files} \
      ~{true="-ipv4" false="" ipv_four} \
      ~{if defined(max_idle) then ("-max-idle " +  '"' + max_idle + '"') else ""} \
      ~{if defined(port) then ("-port " +  '"' + port + '"') else ""} \
      ~{true="-reset" false="" reset} \
      ~{true="-server" false="" server} \
      ~{true="-shutdown" false="" shutdown}
  >>>
  parameter_meta {
    ipv_four: "Use IPv4 rather than IPv6 for the server socket"
    max_idle: "Set idle timeout in minutes for fsc (use 0 for no timeout)"
    port: "Search and start compile server in given port only"
    reset: "Reset compile server caches"
    server: "<hostname:portnumber>  Specify compile server socket"
    shutdown: "Shutdown compile server"
    source_files: ""
  }
}