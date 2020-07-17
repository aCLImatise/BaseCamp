version 1.0

task Srvarv {
  input {
    String? port
    String instance
  }
  command <<<
    srvarv \
      ~{instance} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""}
  >>>
  parameter_meta {
    port: "The TCP port on which to serve the viewer (default: 8000)."
    instance: "The directory containing the viewer instance (default: current directory)."
  }
}