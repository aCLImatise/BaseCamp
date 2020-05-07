version 1.0

task StartParallelJobsTorque.py {
  input {
    Boolean verboseVerbose
    Boolean makeMakeJobs
    Boolean submitSubmitJobs
    String queueQueue
    String jobJobDir
    Int maxMaxWallTime
    String cpusCpus
    String nodesNodes
  }
  command <<<
    start_parallel_jobs_torque.py \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--make_jobs" false="" makeMakeJobs} \
      ~{true="--submit_jobs" false="" submitSubmitJobs} \
      ~{if defined(queueQueue) then ("--queue " +  '"' + queueQueue + '"') else ""} \
      ~{if defined(jobJobDir) then ("--job_dir " +  '"' + jobJobDir + '"') else ""} \
      ~{if defined(maxMaxWallTime) then ("--max_walltime " +  '"' + maxMaxWallTime + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{if defined(nodesNodes) then ("--nodes " +  '"' + nodesNodes + '"') else ""}
  >>>
}