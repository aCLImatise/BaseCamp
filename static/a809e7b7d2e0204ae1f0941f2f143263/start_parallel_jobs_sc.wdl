version 1.0

task StartParallelJobsSc.py {
  input {
    Boolean verboseVerbose
    Boolean makeMakeJobs
    Boolean submitSubmitJobs
    String queueQueueName
  }
  command <<<
    start_parallel_jobs_sc.py \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--make_jobs" false="" makeMakeJobs} \
      ~{true="--submit_jobs" false="" submitSubmitJobs} \
      ~{if defined(queueQueueName) then ("--queue_name " +  '"' + queueQueueName + '"') else ""}
  >>>
}