version 1.0

task BcbioVmpyIpython {
  input {
    Directory? fc_dir
    File? system_config
    Int? num_cores
    String? resources
    Int? timeout
    Int? retries
    String? tag
    File? tmpdir
    String? image
    String sample_config
    String queue
    String process
  }
  command <<<
    bcbio_vm_py ipython \
      ~{sample_config} \
      ~{queue} \
      ~{process} \
      ~{if defined(fc_dir) then ("--fcdir " +  '"' + fc_dir + '"') else ""} \
      ~{if defined(system_config) then ("--systemconfig " +  '"' + system_config + '"') else ""} \
      ~{if defined(num_cores) then ("--numcores " +  '"' + num_cores + '"') else ""} \
      ~{if defined(resources) then ("--resources " +  '"' + resources + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(image) then ("--image " +  '"' + image + '"') else ""}
  >>>
  parameter_meta {
    fc_dir: "A directory of Illumina output or fastq files to"
    system_config: "Global YAML configuration file specifying system\\ndetails. Defaults to installed bcbio_system.yaml."
    num_cores: "Total cores to use for processing"
    resources: "Cluster specific resources specifications. Can be\\nspecified multiple times. Supports SGE and SLURM\\nparameters."
    timeout: "Number of minutes before cluster startup times out.\\nDefaults to 15"
    retries: "Number of retries of failed tasks during distributed\\nprocessing. Default 0 (no retries)"
    tag: "Tag name to label jobs on the cluster"
    tmpdir: "Path of local on-machine temporary directory to\\nprocess in.\\n"
    image: ""
    sample_config: "YAML file with details about samples to process."
    queue: "Scheduler queue to run jobs on."
    process: "--image IMAGE         Docker image name to use, could point to compatible"
  }
  output {
    File out_stdout = stdout()
    Directory out_fc_dir = "${in_fc_dir}"
  }
}