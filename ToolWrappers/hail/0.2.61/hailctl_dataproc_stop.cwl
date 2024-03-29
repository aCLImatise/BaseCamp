class: CommandLineTool
id: hailctl_dataproc_stop.cwl
inputs:
- id: in_async
  doc: Do not wait for cluster deletion.
  type: boolean?
  inputBinding:
    prefix: --async
- id: in_dry_run
  doc: Print gcloud dataproc command, but don't run it.
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_name
  doc: Cluster name.
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
- stop
