version 1.0

task TripailleJobRunJobs {
  input {
    Boolean? wait
  }
  command <<<
    tripaille job run_jobs \
      ~{if (wait) then "--wait" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    wait: "Wait for job completion  [default: True]"
  }
  output {
    File out_stdout = stdout()
  }
}