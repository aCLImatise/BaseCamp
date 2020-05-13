version 1.0

task StartParallelPicrustJobsSge.py {
  input {
    Boolean verboseVerbose
    Boolean makeMakeJobs
    Boolean submitSubmitJobs
    String delayDelay
    String queueQueue
    String jobJobDir
    String numNumJobs
  }
  command <<<
    start_parallel_picrust_jobs_sge.py \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--make_jobs" false="" makeMakeJobs} \
      ~{true="--submit_jobs" false="" submitSubmitJobs} \
      ~{if defined(delayDelay) then ("--delay " +  '"' + delayDelay + '"') else ""} \
      ~{if defined(queueQueue) then ("--queue " +  '"' + queueQueue + '"') else ""} \
      ~{if defined(jobJobDir) then ("--job_dir " +  '"' + jobJobDir + '"') else ""} \
      ~{if defined(numNumJobs) then ("--num_jobs " +  '"' + numNumJobs + '"') else ""}
  >>>
}