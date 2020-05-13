class: CommandLineTool
id: oligotm.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: oligo
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- oligotm
