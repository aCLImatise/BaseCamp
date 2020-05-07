class: CommandLineTool
id: RapClust.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: config
  doc: Config file describing the experimental setup  [required]
  type: string
  inputBinding:
    prefix: --config
outputs: []
cwlVersion: v1.1
baseCommand:
- RapClust
