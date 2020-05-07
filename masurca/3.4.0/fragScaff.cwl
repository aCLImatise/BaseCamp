class: CommandLineTool
id: fragScaff.sh.cwl
inputs:
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: c
  doc: ''
  type: long
  inputBinding:
    prefix: -c
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- fragScaff.sh
