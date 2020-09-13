version 1.0

task EagleInterface {
  input {
    Int? port
    Boolean? public
    Boolean? no_debug
    File? config
    Int? processes
  }
  command <<<
    eagle interface \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if (public) then "--public" else ""} \
      ~{if (no_debug) then "--nodebug" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""}
  >>>
  parameter_meta {
    port: "port (default: 8000)"
    public: "listen for external connections"
    no_debug: "disable debug messages"
    config: "config file to use."
    processes: "use up to M parallel processes to serve HTTP requests\\n(default=1).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}