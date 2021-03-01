version 1.0

task Dxnotebookreconnect {
  input {
    String? port
    String job_id
  }
  command <<<
    dx_notebook_reconnect \
      ~{job_id} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    port: "Local port to use for connecting."
    job_id: "Job-id of the notebook job to reconnect to."
  }
  output {
    File out_stdout = stdout()
  }
}