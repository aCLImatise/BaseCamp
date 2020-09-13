version 1.0

task BcbioNextgenpy {
  input {
    Int? num_cores
    String? parallel_type
    String? scheduler
    Boolean? local_controller
    String? queue
    String? resources
    Int? timeout
    Int? retries
    String? tag
    String? run_workflow_given
    Directory? workdir
    Boolean? force_single
    String? separators
    String global_config
    String fc_dir
    String run_config
    Directory directory
  }
  command <<<
    bcbio_nextgen_py \
      ~{global_config} \
      ~{fc_dir} \
      ~{run_config} \
      ~{directory} \
      ~{if defined(num_cores) then ("--numcores " +  '"' + num_cores + '"') else ""} \
      ~{if defined(parallel_type) then ("--paralleltype " +  '"' + parallel_type + '"') else ""} \
      ~{if defined(scheduler) then ("--scheduler " +  '"' + scheduler + '"') else ""} \
      ~{if (local_controller) then "--local_controller" else ""} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{if defined(resources) then ("--resources " +  '"' + resources + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(run_workflow_given) then ("--workflow " +  '"' + run_workflow_given + '"') else ""} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if (force_single) then "--force-single" else ""} \
      ~{if defined(separators) then ("--separators " +  '"' + separators + '"') else ""}
  >>>
  parameter_meta {
    num_cores: "Total cores to use for processing"
    parallel_type: "Approach to parallelization"
    scheduler: "Scheduler to use for ipython parallel"
    local_controller: "run controller locally"
    queue: "Scheduler queue to run jobs on, for ipython parallel"
    resources: "Cluster specific resources specifications. Can be\\nspecified multiple times. Supports SGE, Torque, LSF\\nand SLURM parameters."
    timeout: "Number of minutes before cluster startup times out.\\nDefaults to 15"
    retries: "Number of retries of failed tasks during distributed\\nprocessing. Default 0 (no retries)"
    tag: "Tag name to label jobs on the cluster"
    run_workflow_given: "Run a workflow with the given commandline arguments"
    workdir: "Directory to process in. Defaults to current working"
    force_single: "Treat all files as single reads"
    separators: "comma separated list of separators that indicates\\npaired files.\\n"
    global_config: "Global YAML configuration file specifying details\\nabout the system (optional, defaults to installed\\nbcbio_system.yaml)"
    fc_dir: "A directory of Illumina output or fastq files to\\nprocess (optional)"
    run_config: "YAML file with details about samples to process\\n(required, unless using Galaxy LIMS as input)"
    directory: "-v, --version         Print current version"
  }
  output {
    File out_stdout = stdout()
  }
}