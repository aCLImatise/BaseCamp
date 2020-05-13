class: CommandLineTool
id: rfheader.cwl
inputs:
- id: refine
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: the
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: header
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- rfheader
