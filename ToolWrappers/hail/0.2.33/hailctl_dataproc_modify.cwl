class: CommandLineTool
id: hailctl_dataproc_modify.cwl
inputs:
- id: in_wheel
  doc: New Hail installation.
  type: string
  inputBinding:
    prefix: --wheel
- id: in_num_workers
  doc: New number of worker machines (min. 2).
  type: long
  inputBinding:
    prefix: --num-workers
- id: in_num_preemptible_workers
  doc: New number of preemptible worker machines.
  type: long
  inputBinding:
    prefix: --num-preemptible-workers
- id: in_graceful_decommission_timeout
  doc: "If set, cluster size downgrade will use graceful\ndecommissioning with the\
    \ given timeout (e.g. \"60m\")."
  type: long
  inputBinding:
    prefix: --graceful-decommission-timeout
- id: in_max_idle
  doc: New maximum idle time before shutdown (e.g. "60m").
  type: long
  inputBinding:
    prefix: --max-idle
- id: in_dry_run
  doc: Print gcloud dataproc command, but don't run it.
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: in_zone
  doc: "Compute zone for Dataproc cluster (default: us-\ncentral1-b)."
  type: long
  inputBinding:
    prefix: --zone
- id: in_update_hail_version
  doc: "Update the version of hail running on cluster to match\nthe currently installed\
    \ version.\n"
  type: boolean
  inputBinding:
    prefix: --update-hail-version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hailctl
- dataproc
- modify
