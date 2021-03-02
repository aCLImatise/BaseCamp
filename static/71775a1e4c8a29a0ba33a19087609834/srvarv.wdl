version 1.0

task Srvarv {
  input {
    Int? port
    String instance
  }
  command <<<
    srvarv \
      ~{instance} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    port: "The TCP port on which to serve the viewer (default:\\n8000).\\n"
    instance: "The directory containing the viewer instance (default:\\ncurrent directory)."
  }
  output {
    File out_stdout = stdout()
  }
}