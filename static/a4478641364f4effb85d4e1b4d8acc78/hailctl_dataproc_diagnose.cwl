class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hailctl_dataproc_diagnose.cwl
inputs:
- id: dest
  doc: Directory for diagnose output -- must be local.
  type: string
  inputBinding:
    prefix: --dest
- id: hail_log
  doc: Path for hail.log file.
  type: string
  inputBinding:
    prefix: --hail-log
- id: overwrite
  doc: Delete dest directory before adding new files.
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: no_diagnose
  doc: Do not run gcloud dataproc clusters diagnose.
  type: boolean
  inputBinding:
    prefix: --no-diagnose
- id: compress
  doc: GZIP all files.
  type: boolean
  inputBinding:
    prefix: --compress
- id: workers
  doc: '[WORKERS [WORKERS ...]] Specific workers to get log files from.'
  type: boolean
  inputBinding:
    prefix: --workers
- id: take
  doc: Only download logs from the first N workers.
  type: string
  inputBinding:
    prefix: --take
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
- diagnose
