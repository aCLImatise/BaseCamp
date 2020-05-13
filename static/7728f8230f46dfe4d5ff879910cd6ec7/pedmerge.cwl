class: CommandLineTool
id: pedmerge.cwl
inputs:
- id: input_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pedmerge
