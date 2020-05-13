class: CommandLineTool
id: menecheck.cwl
inputs:
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- menecheck
