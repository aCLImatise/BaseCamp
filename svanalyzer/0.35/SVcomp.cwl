class: CommandLineTool
id: SVcomp.cwl
inputs:
- id: ref
  doc: ''
  type: string
  inputBinding:
    prefix: --ref
- id: first
  doc: ''
  type: string
  inputBinding:
    prefix: --first
- id: second
  doc: ''
  type: string
  inputBinding:
    prefix: --second
outputs: []
cwlVersion: v1.1
baseCommand:
- SVcomp
