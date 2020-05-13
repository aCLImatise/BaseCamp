version 1.0

task Hpcrunner.plSubmitJobs {
  input {
    Boolean nNTasksPerNode
    Boolean nodesNodesCount
    Boolean moduleModule
    Boolean partitionPartition
    Boolean accountAccount
    Boolean useUseBatches
    Boolean serialSerial
    Boolean wallWallTime
    Boolean maxMaxArraySize
    Boolean nNTasks
    Boolean memMem
    Boolean condCondAEnv
    Boolean afterAfterOk
    Boolean userUser
    Boolean cpusCpusPerTask
    Boolean jobJobName
    Boolean commandsCommandsPerNode
    Boolean dryDryRun
    String? helpHelp
  }
  command <<<
    hpcrunner.pl submit_jobs \
      ~{helpHelp} \
      ~{true="--ntasks_per_node" false="" nNTasksPerNode} \
      ~{true="--nodes_count" false="" nodesNodesCount} \
      ~{true="--module" false="" moduleModule} \
      ~{true="--partition" false="" partitionPartition} \
      ~{true="--account" false="" accountAccount} \
      ~{true="--use_batches" false="" useUseBatches} \
      ~{true="--serial" false="" serialSerial} \
      ~{true="--walltime" false="" wallWallTime} \
      ~{true="--max_array_size" false="" maxMaxArraySize} \
      ~{true="--ntasks" false="" nNTasks} \
      ~{true="--mem" false="" memMem} \
      ~{true="--conda_env" false="" condCondAEnv} \
      ~{true="--afterok" false="" afterAfterOk} \
      ~{true="--user" false="" userUser} \
      ~{true="--cpus_per_task" false="" cpusCpusPerTask} \
      ~{true="--jobname" false="" jobJobName} \
      ~{true="--commands_per_node" false="" commandsCommandsPerNode} \
      ~{true="--dry_run" false="" dryDryRun}
  >>>
}