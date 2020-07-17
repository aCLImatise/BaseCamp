version 1.0

task BcbioNextgen.py {
  input {
    String? num_cores
    String? parallel_type
    String? scheduler
    Boolean? local_controller
    String? queue
    String? resources
    String? timeout
    String? retries
    String? tag
    String? run_workflow_given
    String? workdir
    Boolean? force_single
    String? separators
    String global_config
    String fc_dir
    String run_config
  }
  command <<<
    bcbio_nextgen.py \
      ~{global_config} \
      ~{fc_dir} \
      ~{run_config} \
      ~{if defined(num_cores) then ("--numcores " +  '"' + num_cores + '"') else ""} \
      ~{if defined(parallel_type) then ("--paralleltype " +  '"' + parallel_type + '"') else ""} \
      ~{if defined(scheduler) then ("--scheduler " +  '"' + scheduler + '"') else ""} \
      ~{true="--local_controller" false="" local_controller} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{if defined(resources) then ("--resources " +  '"' + resources + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(run_workflow_given) then ("--workflow " +  '"' + run_workflow_given + '"') else ""} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{true="--force-single" false="" force_single} \
      ~{if defined(separators) then ("--separators " +  '"' + separators + '"') else ""}
  >>>
  parameter_meta {
    num_cores: "Total cores to use for processing"
    parallel_type: "Approach to parallelization"
    scheduler: "Scheduler to use for ipython parallel"
    local_controller: "run controller locally"
    queue: "Scheduler queue to run jobs on, for ipython parallel"
    resources: "Cluster specific resources specifications. Can be specified multiple times. Supports SGE, Torque, LSF and SLURM parameters."
    timeout: "Number of minutes before cluster startup times out. Defaults to 15"
    retries: "Number of retries of failed tasks during distributed processing. Default 0 (no retries)"
    tag: "Tag name to label jobs on the cluster"
    run_workflow_given: "Run a workflow with the given commandline arguments"
    workdir: "Directory to process in. Defaults to current working directory"
    force_single: "Treat all files as single reads"
    separators: "comma separated list of separators that indicates paired files."
    global_config: "Global YAML configuration file specifying details about the system (optional, defaults to installed bcbio_system.yaml)"
    fc_dir: "A directory of Illumina output or fastq files to process (optional)"
    run_config: "YAML file with details about samples to process (required, unless using Galaxy LIMS as input)"
  }
}