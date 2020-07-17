class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/db_printlog.cwl
inputs:
- id: nrv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -NrV
- id: b
  doc: ''
  type: File
  inputBinding:
    prefix: -b
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -D
- id: e
  doc: ''
  type: File
  inputBinding:
    prefix: -e
- id: h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -P
outputs: []
cwlVersion: v1.1
baseCommand:
- db_printlog
