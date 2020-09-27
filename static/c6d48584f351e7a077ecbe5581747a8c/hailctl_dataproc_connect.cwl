class: CommandLineTool
id: hailctl_dataproc_connect.cwl
inputs:
- id: in_dry_run
  doc: ''
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: in_zone
  doc: ''
  type: string
  inputBinding:
    prefix: --zone
- id: in_port
  doc: ''
  type: string
  inputBinding:
    prefix: --port
- id: in_name
  doc: '{notebook,nb,spark-ui,ui,spark-ui1,ui1,spark-ui2,ui2,spark-history,hist}'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hailctl
- dataproc
- connect
