class: CommandLineTool
id: pynnotator_or_options.cwl
inputs:
- id: hg38
  doc: ''
  type: string
  inputBinding:
    position: 0
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
- or
- options
