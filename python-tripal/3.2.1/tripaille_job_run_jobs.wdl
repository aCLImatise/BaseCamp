version 1.0

task TripailleJobRunJobs {
  input {
    Boolean waitWait
  }
  command <<<
    tripaille job run_jobs \
      ~{true="--wait" false="" waitWait}
  >>>
}