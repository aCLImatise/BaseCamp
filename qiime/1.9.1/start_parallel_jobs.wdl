version 1.0

task StartParallelJobs.py {
  input {
    Boolean verboseVerbose
    Boolean makeMakeJobs
    Boolean submitSubmitJobs
  }
  command <<<
    start_parallel_jobs.py \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--make_jobs" false="" makeMakeJobs} \
      ~{true="--submit_jobs" false="" submitSubmitJobs}
  >>>
}