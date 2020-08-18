class: CommandLineTool
id: ../../../hivnetworkcsv.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: u
  doc: ''
  type: string
  inputBinding:
    prefix: -u
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- hivnetworkcsv
