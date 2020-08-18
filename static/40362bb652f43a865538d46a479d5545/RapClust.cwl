class: CommandLineTool
id: ../../../RapClust.cwl
inputs:
- id: config
  doc: Config file describing the experimental setup  [required]
  type: string
  inputBinding:
    prefix: --config
outputs: []
cwlVersion: v1.1
baseCommand:
- RapClust
