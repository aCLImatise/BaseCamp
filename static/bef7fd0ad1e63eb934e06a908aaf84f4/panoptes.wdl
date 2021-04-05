version 1.0

task Panoptes {
  input {
    Float? ip
    Int? port
    Boolean? verbose
  }
  command <<<
    panoptes \
      ~{if defined(ip) then ("--ip " +  '"' + ip + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/panoptes-ui:0.2.0--pyh3252c3a_0"
  }
  parameter_meta {
    ip: "Set the IP of the panoptes server [Default: 0.0.0.0]"
    port: "The port of the server [Default: 5000]"
    verbose: "Be Verbose"
  }
  output {
    File out_stdout = stdout()
  }
}