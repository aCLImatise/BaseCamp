version 1.0

task FunnelTask {
  input {
    Int? server
  }
  command <<<
    funnel task \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""}
  >>>
  parameter_meta {
    server: "(default \\\"http://localhost:8000\\\")"
  }
  output {
    File out_stdout = stdout()
  }
}