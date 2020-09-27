version 1.0

task FunnelTaskGet {
  input {
    String? view
    Int? server
    String? task_id
  }
  command <<<
    funnel task get \
      ~{task_id} \
      ~{if defined(view) then ("--view " +  '"' + view + '"') else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""}
  >>>
  parameter_meta {
    view: "Task view (default \\\"full\\\")"
    server: "(default \\\"http://localhost:8000\\\")"
    task_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}