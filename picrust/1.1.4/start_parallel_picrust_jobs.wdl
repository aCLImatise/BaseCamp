version 1.0

task StartParallelPicrustJobs.py {
  input {
    Boolean verboseVerbose
    Boolean makeMakeJobs
    Boolean submitSubmitJobs
    String delayDelay
    String numNumJobs
  }
  command <<<
    start_parallel_picrust_jobs.py \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--make_jobs" false="" makeMakeJobs} \
      ~{true="--submit_jobs" false="" submitSubmitJobs} \
      ~{if defined(delayDelay) then ("--delay " +  '"' + delayDelay + '"') else ""} \
      ~{if defined(numNumJobs) then ("--num_jobs " +  '"' + numNumJobs + '"') else ""}
  >>>
}