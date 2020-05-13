class: CommandLineTool
id: specialk.cwl
inputs:
- id: reads_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- specialk
