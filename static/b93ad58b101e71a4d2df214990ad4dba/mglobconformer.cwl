class: CommandLineTool
id: mglobconformer.cwl
inputs:
- id: ob_conformer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: n_steps
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: geom_steps
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- mglobconformer
