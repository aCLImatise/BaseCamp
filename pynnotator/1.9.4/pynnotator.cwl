class: CommandLineTool
id: pynnotator.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- pynnotator
