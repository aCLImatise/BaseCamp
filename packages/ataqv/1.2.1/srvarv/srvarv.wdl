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
    docker: "quay.io/biocontainers/ataqv:1.2.1--py36h00065c3_1"
  }
  parameter_meta {
    port: "The TCP port on which to serve the viewer (default:\\n8000).\\n"
    instance: "The directory containing the viewer instance (default:\\ncurrent directory)."
  }
  output {
    File out_stdout = stdout()
  }
}