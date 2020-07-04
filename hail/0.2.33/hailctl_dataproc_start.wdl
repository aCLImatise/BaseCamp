version 1.0

task HailctlDataprocStart {
  input {
    String? master_machine_type
    String? master_memory_fraction
    String? master_boot_disk_size
    String? num_master_local_ssds
    String? num_preemptible_workers
    String? num_worker_local_ssds
    String? num_workers
    String? preemptible_worker_boot_disk_size
    String? worker_boot_disk_size
    String? worker_machine_type
    String? zone
    String? properties
    String? metadata
    String? packages
    String? project
    String? configuration
    Int? max_idle
    Int? max_age
    String? bucket
    String? network
    String? master_tags
    String? wheel
    String? in_it
    String? in_it_timeout
    String? vep
    Boolean? dry_run
    String name
  }
  command <<<
    hailctl dataproc start \
      ~{name} \
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
      ~{if defined(zone) then ("--zone " +  '"' + zone + '"') else ""} \
      ~{if defined(properties) then ("--properties " +  '"' + properties + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(packages) then ("--packages " +  '"' + packages + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(configuration) then ("--configuration " +  '"' + configuration + '"') else ""} \
      ~{if defined(max_idle) then ("--max-idle " +  '"' + max_idle + '"') else ""} \
      ~{if defined(max_age) then ("--max-age " +  '"' + max_age + '"') else ""} \
      ~{if defined(bucket) then ("--bucket " +  '"' + bucket + '"') else ""} \
      ~{if defined(network) then ("--network " +  '"' + network + '"') else ""} \
      ~{if defined(master_tags) then ("--master-tags " +  '"' + master_tags + '"') else ""} \
      ~{if defined(wheel) then ("--wheel " +  '"' + wheel + '"') else ""} \
      ~{if defined(in_it) then ("--init " +  '"' + in_it + '"') else ""} \
      ~{if defined(in_it_timeout) then ("--init_timeout " +  '"' + in_it_timeout + '"') else ""} \
      ~{if defined(vep) then ("--vep " +  '"' + vep + '"') else ""} \
      ~{true="--dry-run" false="" dry_run}
  >>>
  parameter_meta {
    master_machine_type: "Master machine type (default: n1-highmem-8)."
    master_memory_fraction: "Fraction of master memory allocated to the JVM. Use a smaller value to reserve more memory for Python. (default: 0.8)"
    master_boot_disk_size: "Disk size of master machine, in GB (default: 100)."
    num_master_local_ssds: "Number of local SSDs to attach to the master machine (default: 0)."
    num_preemptible_workers: "Number of preemptible worker machines (default: 0)."
    num_worker_local_ssds: "Number of local SSDs to attach to each worker machine (default: 0)."
    num_workers: "Number of worker machines (default: 2)."
    preemptible_worker_boot_disk_size: "Disk size of preemptible machines, in GB (default: 40)."
    worker_boot_disk_size: "Disk size of worker machines, in GB (default: 40)."
    worker_machine_type: "Worker machine type (default: n1-standard-8, or n1-highmem-8 with --vep)."
    zone: "Compute zone for the cluster (default: us-central1-b)."
    properties: "Additional configuration properties for the cluster"
    metadata: "Comma-separated list of metadata to add: KEY1=VALUE1,KEY2=VALUE2..."
    packages: "Comma-separated list of Python packages to be installed on the master node."
    project: "Google Cloud project to start cluster (defaults to currently set project)."
    configuration: "Google Cloud configuration to start cluster (defaults to currently set configuration)."
    max_idle: "If specified, maximum idle time before shutdown (e.g. 60m)."
    max_age: "If specified, maximum age before shutdown (e.g. 60m)."
    bucket: "The Google Cloud Storage bucket to use for cluster staging (just the bucket name, no gs:// prefix)."
    network: "the network for all nodes in this cluster"
    master_tags: "comma-separated list of instance tags to apply to the mastern node"
    wheel: "Non-default Hail installation. Warning: experimental."
    in_it: "Comma-separated list of init scripts to run."
    in_it_timeout: "Flag to specify a timeout period for the initialization action"
    vep: "Install VEP for the specified reference genome."
    dry_run: "Print gcloud dataproc command, but don't run it."
    name: "Cluster name."
  }
}