class: CommandLineTool
id: merfishtools_multidiffexp_information.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: more
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: information
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: try
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- merfishtools
- multidiffexp
- information
