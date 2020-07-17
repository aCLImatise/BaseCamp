version 1.0

task DxNotebookReconnect {
  input {
    String? port
    String job_id
  }
  command <<<
    dx-notebook-reconnect \
      ~{job_id} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""}
  >>>
  parameter_meta {
    port: "Local port to use for connecting."
    job_id: "Job-id of the notebook job to reconnect to."
  }
}