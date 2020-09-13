version 1.0

task TripailleJobWait {
  input {
    String job_id
  }
  command <<<
    tripaille job wait \
      ~{job_id}
  >>>
  parameter_meta {
    job_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}