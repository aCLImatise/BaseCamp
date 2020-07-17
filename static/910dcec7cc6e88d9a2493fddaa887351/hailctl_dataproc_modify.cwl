class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hailctl_dataproc_modify.cwl
inputs:
- id: wheel
  doc: New Hail installation.
  type: string
  inputBinding:
    prefix: --wheel
- id: num_workers
  doc: New number of worker machines (min. 2).
  type: string
  inputBinding:
    prefix: --num-workers
- id: num_preemptible_workers
  doc: New number of preemptible worker machines.
  type: string
  inputBinding:
    prefix: --num-preemptible-workers
- id: graceful_decommission_timeout
  doc: If set, cluster size downgrade will use graceful decommissioning with the given
    timeout (e.g. "60m").
  type: string
  inputBinding:
    prefix: --graceful-decommission-timeout
- id: max_idle
  doc: New maximum idle time before shutdown (e.g. "60m").
  type: long
  inputBinding:
    prefix: --max-idle
- id: dry_run
  doc: Print gcloud dataproc command, but don't run it.
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: zone
  doc: 'Compute zone for Dataproc cluster (default: us- central1-b).'
  type: string
  inputBinding:
    prefix: --zone
- id: update_hail_version
  doc: Update the version of hail running on cluster to match the currently installed
    version.
  type: boolean
  inputBinding:
    prefix: --update-hail-version
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
- modify
