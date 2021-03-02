class: CommandLineTool
id: hailctl_dataproc_modify.cwl
inputs:
- id: in_num_workers
  doc: New number of worker machines (min. 2).
  type: long?
  inputBinding:
    prefix: --num-workers
- id: in_num_preemptible_workers
  doc: New number of secondary (preemptible) worker machines.
  type: long?
  inputBinding:
    prefix: --num-preemptible-workers
- id: in_graceful_decommission_timeout
  doc: "If set, cluster size downgrade will use graceful\ndecommissioning with the\
    \ given timeout (e.g. \"60m\")."
  type: long?
  inputBinding:
    prefix: --graceful-decommission-timeout
- id: in_max_idle
  doc: New maximum idle time before shutdown (e.g. "60m").
  type: long?
  inputBinding:
    prefix: --max-idle
- id: in_no_max_idle
  doc: Disable auto deletion after idle time.
  type: boolean?
  inputBinding:
    prefix: --no-max-idle
- id: in_expiration_time
  doc: "The time when cluster will be auto-deleted. (e.g.\n\"2020-01-01T20:00:00Z\"\
    ). Execute gcloud topic\ndatatimes for more information."
  type: long?
  inputBinding:
    prefix: --expiration-time
- id: in_max_age
  doc: "If the cluster is older than this, it will be auto-\ndeleted. (e.g. \"2h\"\
    )Execute gcloud topic datatimes for\nmore information."
  type: long?
  inputBinding:
    prefix: --max-age
- id: in_no_max_age
  doc: Disable auto-deletion due to max age or expiration
  type: boolean?
  inputBinding:
    prefix: --no-max-age
- id: in_zone
  doc: Compute zone for Dataproc cluster.
  type: string?
  inputBinding:
    prefix: --zone
- id: in_update_hail_version
  doc: "Update the version of hail running on cluster to match\nthe currently installed\
    \ version."
  type: boolean?
  inputBinding:
    prefix: --update-hail-version
- id: in_wheel
  doc: New Hail installation.
  type: string?
  inputBinding:
    prefix: --wheel
- id: in_time_dot
  doc: --dry-run             Print gcloud dataproc command, but don't run it.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1
cwlVersion: v1.1
baseCommand:
- hailctl
- dataproc
- modify
