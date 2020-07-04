class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hailctl_dataproc_connect.cwl
inputs:
- id: port
  doc: 'Local port to use for SSH tunnel to master node (default: 10000).'
  type: string
  inputBinding:
    prefix: --port
- id: zone
  doc: 'Compute zone for Dataproc cluster (default: us- central1-b).'
  type: string
  inputBinding:
    prefix: --zone
- id: dry_run
  doc: Print gcloud dataproc command, but don't run it.
  type: boolean
  inputBinding:
    prefix: --dry-run
outputs: []
cwlVersion: v1.1
baseCommand:
- hailctl
- dataproc
- connect
