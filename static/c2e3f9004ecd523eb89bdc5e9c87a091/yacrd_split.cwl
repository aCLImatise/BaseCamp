class: CommandLineTool
id: yacrd_split.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: input
  doc: ''
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- yacrd
- split
