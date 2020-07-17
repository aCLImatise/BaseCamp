version 1.0

task Hpcrunner.plSubmitJobs {
  input {
    Boolean? account
    Boolean? after_ok
    Boolean? cpus_per_task
    Boolean? partition
    Boolean? serial
    Boolean? job_name
    Boolean? commands_per_node
    Boolean? n_tasks
    Boolean? mem
    Boolean? nodes_count
    Boolean? dry_run
    String help
  }
  command <<<
    hpcrunner.pl submit_jobs \
      ~{help} \
      ~{true="--account" false="" account} \
      ~{true="--afterok" false="" after_ok} \
      ~{true="--cpus_per_task" false="" cpus_per_task} \
      ~{true="--partition" false="" partition} \
      ~{true="--serial" false="" serial} \
      ~{true="--jobname" false="" job_name} \
      ~{true="--commands_per_node" false="" commands_per_node} \
      ~{true="--ntasks" false="" n_tasks} \
      ~{true="--mem" false="" mem} \
      ~{true="--nodes_count" false="" nodes_count} \
      ~{true="--dry_run" false="" dry_run}
  >>>
  parameter_meta {
    account: "--account switch in slurm. "
    after_ok: "afterok switch in slurm. --afterok 123,134 will tell slurm to start this job after 123,134 have exited successfully [Multiple; Split by \",\"]"
    cpus_per_task: "--cpus-per-task switch in slurm [Default:\"4\"; Integer]"
    partition: "Slurm partition to submit jobs to."
    serial: "Use this if you wish to run each job run one after another, with each job starting only after the previous has completed successfully [Flag]"
    job_name: "Specify a job name, each job will be appended with its batch order [Default:\"hpcjob_001\"]"
    commands_per_node: "Commands to run on each node. If you have a low number of jobs you can submit at a time you want this number much higher.  [Default:\"1\"; Integer]"
    n_tasks: "--ntasks switch in slurm. This is equal to the number of concurrent tasks on each node * the number of nodes, not the total number of tasks [ Default:\"1\"; Integer]"
    mem: "Supply a memory limit [Default:\"10GB\"]"
    nodes_count: "Number of nodes requested. You should only use this if submitting parallel jobs. [Default:\"1\"; Integer ]"
    dry_run: "Do a dry run - do not submit to the scheduler. [ Flag]"
    help: "Prints this usage information"
  }
}