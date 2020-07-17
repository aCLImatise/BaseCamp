class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hailctl_dataproc_stop.cwl
inputs:
- id: async
  doc: Do not wait for cluster deletion.
  type: boolean
  inputBinding:
    prefix: --async
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
- stop
