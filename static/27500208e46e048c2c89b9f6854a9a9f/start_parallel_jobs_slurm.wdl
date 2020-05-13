version 1.0

task StartParallelJobsSlurm.py {
  input {
    Boolean verboseVerbose
    Boolean makeMakeJobs
    Boolean submitSubmitJobs
    String queueQueue
    String memMemPerCpu
    String jobJobDir
    String timeTime
  }
  command <<<
    start_parallel_jobs_slurm.py \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--make_jobs" false="" makeMakeJobs} \
      ~{true="--submit_jobs" false="" submitSubmitJobs} \
      ~{if defined(queueQueue) then ("--queue " +  '"' + queueQueue + '"') else ""} \
      ~{if defined(memMemPerCpu) then ("--mem_per_cpu " +  '"' + memMemPerCpu + '"') else ""} \
      ~{if defined(jobJobDir) then ("--job_dir " +  '"' + jobJobDir + '"') else ""} \
      ~{if defined(timeTime) then ("--time " +  '"' + timeTime + '"') else ""}
  >>>
}