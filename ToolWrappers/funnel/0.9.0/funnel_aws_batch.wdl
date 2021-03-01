version 1.0

task FunnelAwsBatch {
  input {
    String create_job_def
  }
  command <<<
    funnel aws batch \
      ~{create_job_def}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    create_job_def: "Revise a job definition"
  }
  output {
    File out_stdout = stdout()
  }
}