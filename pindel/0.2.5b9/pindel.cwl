class: CommandLineTool
id: pindel.cwl
inputs:
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- pindel
