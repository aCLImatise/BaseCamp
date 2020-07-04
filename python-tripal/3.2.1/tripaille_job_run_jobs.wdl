version 1.0

task TripailleJobRunJobs {
  input {
    Boolean? wait
  }
  command <<<
    tripaille job run_jobs \
      ~{true="--wait" false="" wait}
  >>>
  parameter_meta {
    wait: "Wait for job completion  [default: True]"
  }
}