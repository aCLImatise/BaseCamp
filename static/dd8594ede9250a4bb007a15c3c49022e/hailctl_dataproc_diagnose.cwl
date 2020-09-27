class: CommandLineTool
id: hailctl_dataproc_diagnose.cwl
inputs:
- id: in_dest
  doc: Directory for diagnose output -- must be local.
  type: Directory
  inputBinding:
    prefix: --dest
- id: in_hail_log
  doc: Path for hail.log file.
  type: File
  inputBinding:
    prefix: --hail-log
- id: in_overwrite
  doc: Delete dest directory before adding new files.
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: in_no_diagnose
  doc: Do not run gcloud dataproc clusters diagnose.
  type: boolean
  inputBinding:
    prefix: --no-diagnose
- id: in_compress
  doc: GZIP all files.
  type: boolean
  inputBinding:
    prefix: --compress
- id: in_workers
  doc: "[WORKERS [WORKERS ...]]\nSpecific workers to get log files from."
  type: boolean
  inputBinding:
    prefix: --workers
- id: in_take
  doc: Only download logs from the first N workers.
  type: string
  inputBinding:
    prefix: --take
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dest
  doc: Directory for diagnose output -- must be local.
  type: Directory
  outputBinding:
    glob: $(inputs.in_dest)
cwlVersion: v1.1
baseCommand:
- hailctl
- dataproc
- diagnose
