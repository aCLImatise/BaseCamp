version 1.0

task BcbioVmpyCwlrun {
  input {
    Boolean? no_container
    String? queue
    String? resources
    Int? job_limit
    File? run_config
    String? cloud_project
    String? cloud_root
    String? host
    String? auth
  }
  command <<<
    bcbio_vm_py cwlrun \
      ~{if (no_container) then "--no-container" else ""} \
      ~{if defined(queue) then ("--queue " +  '"' + queue + '"') else ""} \
      ~{if defined(resources) then ("--resources " +  '"' + resources + '"') else ""} \
      ~{if defined(job_limit) then ("--joblimit " +  '"' + job_limit + '"') else ""} \
      ~{if defined(run_config) then ("--runconfig " +  '"' + run_config + '"') else ""} \
      ~{if defined(cloud_project) then ("--cloud-project " +  '"' + cloud_project + '"') else ""} \
      ~{if defined(cloud_root) then ("--cloud-root " +  '"' + cloud_root + '"') else ""} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""} \
      ~{if defined(auth) then ("--auth " +  '"' + auth + '"') else ""}
  >>>
  parameter_meta {
    no_container: "Use local installation of bcbio instead of Docker"
    queue: "Scheduler queue to run jobs on, for an HPC system"
    resources: "Cluster specific resources specifications. Can be\\nspecified multiple times. Supports SGE, Torque, LSF\\nand SLURM parameters."
    job_limit: "Maximum number of simultaneous jobs (not cores)\\nsubmitted. Only supported for Cromwell runner.\\nDefaults to 1 for local runner, unlimited otherwise."
    run_config: "Custom configuration HOCON file for Cromwell."
    cloud_project: "Remote cloud project for running jobs. Cromwell\\nAWS/GCP support."
    cloud_root: "Remote bucket location for run files. Cromwell AWS/GCP\\nsupport."
    host: "WES: host for submitting jobs"
    auth: "WES: authentication token"
  }
  output {
    File out_stdout = stdout()
  }
}