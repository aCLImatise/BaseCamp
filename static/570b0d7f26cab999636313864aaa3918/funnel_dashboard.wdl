version 1.0

task FunnelDashboard {
  input {
    Int? server
  }
  command <<<
    funnel dashboard \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""}
  >>>
  parameter_meta {
    server: "(default \\\"http://localhost:8000\\\")"
  }
  output {
    File out_stdout = stdout()
  }
}