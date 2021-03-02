version 1.0

task FunnelTaskGet {
  input {
    String? view
    String? task_id
  }
  command <<<
    funnel task get \
      ~{task_id} \
      ~{if defined(view) then ("--view " +  '"' + view + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    view: "Task view (default \\\"full\\\")"
    task_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}