class: CommandLineTool
id: bootstrap_run.sh.cwl
inputs:
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- bootstrap_run.sh
