version 1.0

task HailctlDataprocStart {
  input {
    Int? master_machine_type
    Float? master_memory_fraction
    Int? master_boot_disk_size
    Int? num_master_local_ssds
    Int? num_preemptible_workers
    Int? num_worker_local_ssds
    Int? num_workers
    Int? preemptible_worker_boot_disk_size
    Int? worker_boot_disk_size
    Int? worker_machine_type
    String? region
    String? zone
    String? properties
    Int? metadata
    String? packages
    String? project
    String? configuration
    Int? max_idle
    Int? expiration_time
    Int? max_age
    String? bucket
    String? network
    String? master_tags
    String? wheel
    String? in_it
    String? in_it_timeout
    String? vep
    Boolean? dry_run
    Boolean? requester_pays_allow_all
    String? requester_pays_allow_buckets
    Boolean? requester_pays_allow_annotation_db
    Boolean? debug_mode
  }
  command <<<
    hailctl dataproc start \
      ~{if defined(master_machine_type) then ("--master-machine-type " +  '"' + master_machine_type + '"') else ""} \
      ~{if defined(master_memory_fraction) then ("--master-memory-fraction " +  '"' + master_memory_fraction + '"') else ""} \
      ~{if defined(master_boot_disk_size) then ("--master-boot-disk-size " +  '"' + master_boot_disk_size + '"') else ""} \
      ~{if defined(num_master_local_ssds) then ("--num-master-local-ssds " +  '"' + num_master_local_ssds + '"') else ""} \
      ~{if defined(num_preemptible_workers) then ("--num-preemptible-workers " +  '"' + num_preemptible_workers + '"') else ""} \
      ~{if defined(num_worker_local_ssds) then ("--num-worker-local-ssds " +  '"' + num_worker_local_ssds + '"') else ""} \
      ~{if defined(num_workers) then ("--num-workers " +  '"' + num_workers + '"') else ""} \
      ~{if defined(preemptible_worker_boot_disk_size) then ("--preemptible-worker-boot-disk-size " +  '"' + preemptible_worker_boot_disk_size + '"') else ""} \
      ~{if defined(worker_boot_disk_size) then ("--worker-boot-disk-size " +  '"' + worker_boot_disk_size + '"') else ""} \
      ~{if defined(worker_machine_type) then ("--worker-machine-type " +  '"' + worker_machine_type + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(zone) then ("--zone " +  '"' + zone + '"') else ""} \
      ~{if defined(properties) then ("--properties " +  '"' + properties + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(packages) then ("--packages " +  '"' + packages + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(configuration) then ("--configuration " +  '"' + configuration + '"') else ""} \
      ~{if defined(max_idle) then ("--max-idle " +  '"' + max_idle + '"') else ""} \
      ~{if defined(expiration_time) then ("--expiration-time " +  '"' + expiration_time + '"') else ""} \
      ~{if defined(max_age) then ("--max-age " +  '"' + max_age + '"') else ""} \
      ~{if defined(bucket) then ("--bucket " +  '"' + bucket + '"') else ""} \
      ~{if defined(network) then ("--network " +  '"' + network + '"') else ""} \
      ~{if defined(master_tags) then ("--master-tags " +  '"' + master_tags + '"') else ""} \
      ~{if defined(wheel) then ("--wheel " +  '"' + wheel + '"') else ""} \
      ~{if defined(in_it) then ("--init " +  '"' + in_it + '"') else ""} \
      ~{if defined(in_it_timeout) then ("--init_timeout " +  '"' + in_it_timeout + '"') else ""} \
      ~{if defined(vep) then ("--vep " +  '"' + vep + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (requester_pays_allow_all) then "--requester-pays-allow-all" else ""} \
      ~{if defined(requester_pays_allow_buckets) then ("--requester-pays-allow-buckets " +  '"' + requester_pays_allow_buckets + '"') else ""} \
      ~{if (requester_pays_allow_annotation_db) then "--requester-pays-allow-annotation-db" else ""} \
      ~{if (debug_mode) then "--debug-mode" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1"
  }
  parameter_meta {
    master_machine_type: "Master machine type (default: n1-highmem-8)."
    master_memory_fraction: "Fraction of master memory allocated to the JVM. Use a\\nsmaller value to reserve more memory for Python.\\n(default: 0.8)"
    master_boot_disk_size: "Disk size of master machine, in GB (default: 100)."
    num_master_local_ssds: "Number of local SSDs to attach to the master machine\\n(default: 0)."
    num_preemptible_workers: "Number of secondary (preemptible) worker machines\\n(default: 0)."
    num_worker_local_ssds: "Number of local SSDs to attach to each worker machine\\n(default: 0)."
    num_workers: "Number of worker machines (default: 2)."
    preemptible_worker_boot_disk_size: "Disk size of secondary (preemptible) worker machines,\\nin GB (default: 40)."
    worker_boot_disk_size: "Disk size of worker machines, in GB (default: 40)."
    worker_machine_type: "Worker machine type (default: n1-standard-8, or\\nn1-highmem-8 with --vep)."
    region: "Compute region for the cluster."
    zone: "Compute zone for the cluster."
    properties: "Additional configuration properties for the cluster"
    metadata: "Comma-separated list of metadata to add:\\nKEY1=VALUE1,KEY2=VALUE2..."
    packages: "Comma-separated list of Python packages to be\\ninstalled on the master node."
    project: "Google Cloud project to start cluster (defaults to\\ncurrently set project)."
    configuration: "Google Cloud configuration to start cluster (defaults\\nto currently set configuration)."
    max_idle: "If specified, maximum idle time before shutdown (e.g.\\n60m)."
    expiration_time: "If specified, time at which cluster is shutdown (e.g.\\n2020-01-01T00:00:00Z)."
    max_age: "If specified, maximum age before shutdown (e.g. 60m)."
    bucket: "The Google Cloud Storage bucket to use for cluster\\nstaging (just the bucket name, no gs:// prefix)."
    network: "the network for all nodes in this cluster"
    master_tags: "comma-separated list of instance tags to apply to the\\nmastern node"
    wheel: "Non-default Hail installation. Warning: experimental."
    in_it: "Comma-separated list of init scripts to run."
    in_it_timeout: "Flag to specify a timeout period for the\\ninitialization action"
    vep: "Install VEP for the specified reference genome."
    dry_run: "Print gcloud dataproc command, but don't run it."
    requester_pays_allow_all: "Allow reading from all requester-pays buckets."
    requester_pays_allow_buckets: "Comma-separated list of requester-pays buckets to\\nallow reading from."
    requester_pays_allow_annotation_db: "Allows reading from any of the requester-pays buckets\\nthat hold data for the annotation database."
    debug_mode: "Enable debug features on created cluster (heap dump on\\nout-of-memory error)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}