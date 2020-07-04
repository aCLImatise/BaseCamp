class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hailctl_dataproc_start.cwl
inputs:
- id: master_machine_type
  doc: 'Master machine type (default: n1-highmem-8).'
  type: string
  inputBinding:
    prefix: --master-machine-type
- id: master_memory_fraction
  doc: 'Fraction of master memory allocated to the JVM. Use a smaller value to reserve
    more memory for Python. (default: 0.8)'
  type: string
  inputBinding:
    prefix: --master-memory-fraction
- id: master_boot_disk_size
  doc: 'Disk size of master machine, in GB (default: 100).'
  type: string
  inputBinding:
    prefix: --master-boot-disk-size
- id: num_master_local_ssds
  doc: 'Number of local SSDs to attach to the master machine (default: 0).'
  type: string
  inputBinding:
    prefix: --num-master-local-ssds
- id: num_preemptible_workers
  doc: 'Number of preemptible worker machines (default: 0).'
  type: string
  inputBinding:
    prefix: --num-preemptible-workers
- id: num_worker_local_ssds
  doc: 'Number of local SSDs to attach to each worker machine (default: 0).'
  type: string
  inputBinding:
    prefix: --num-worker-local-ssds
- id: num_workers
  doc: 'Number of worker machines (default: 2).'
  type: string
  inputBinding:
    prefix: --num-workers
- id: preemptible_worker_boot_disk_size
  doc: 'Disk size of preemptible machines, in GB (default: 40).'
  type: string
  inputBinding:
    prefix: --preemptible-worker-boot-disk-size
- id: worker_boot_disk_size
  doc: 'Disk size of worker machines, in GB (default: 40).'
  type: string
  inputBinding:
    prefix: --worker-boot-disk-size
- id: worker_machine_type
  doc: 'Worker machine type (default: n1-standard-8, or n1-highmem-8 with --vep).'
  type: string
  inputBinding:
    prefix: --worker-machine-type
- id: zone
  doc: 'Compute zone for the cluster (default: us-central1-b).'
  type: string
  inputBinding:
    prefix: --zone
- id: properties
  doc: Additional configuration properties for the cluster
  type: string
  inputBinding:
    prefix: --properties
- id: metadata
  doc: 'Comma-separated list of metadata to add: KEY1=VALUE1,KEY2=VALUE2...'
  type: string
  inputBinding:
    prefix: --metadata
- id: packages
  doc: Comma-separated list of Python packages to be installed on the master node.
  type: string
  inputBinding:
    prefix: --packages
- id: project
  doc: Google Cloud project to start cluster (defaults to currently set project).
  type: string
  inputBinding:
    prefix: --project
- id: configuration
  doc: Google Cloud configuration to start cluster (defaults to currently set configuration).
  type: string
  inputBinding:
    prefix: --configuration
- id: max_idle
  doc: If specified, maximum idle time before shutdown (e.g. 60m).
  type: long
  inputBinding:
    prefix: --max-idle
- id: max_age
  doc: If specified, maximum age before shutdown (e.g. 60m).
  type: long
  inputBinding:
    prefix: --max-age
- id: bucket
  doc: The Google Cloud Storage bucket to use for cluster staging (just the bucket
    name, no gs:// prefix).
  type: string
  inputBinding:
    prefix: --bucket
- id: network
  doc: the network for all nodes in this cluster
  type: string
  inputBinding:
    prefix: --network
- id: master_tags
  doc: comma-separated list of instance tags to apply to the mastern node
  type: string
  inputBinding:
    prefix: --master-tags
- id: wheel
  doc: 'Non-default Hail installation. Warning: experimental.'
  type: string
  inputBinding:
    prefix: --wheel
- id: in_it
  doc: Comma-separated list of init scripts to run.
  type: string
  inputBinding:
    prefix: --init
- id: in_it_timeout
  doc: Flag to specify a timeout period for the initialization action
  type: string
  inputBinding:
    prefix: --init_timeout
- id: vep
  doc: Install VEP for the specified reference genome.
  type: string
  inputBinding:
    prefix: --vep
- id: dry_run
  doc: Print gcloud dataproc command, but don't run it.
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: name
  doc: Cluster name.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- hailctl
- dataproc
- start
