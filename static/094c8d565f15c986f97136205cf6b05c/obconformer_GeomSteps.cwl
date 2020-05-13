class: CommandLineTool
id: obconformer_GeomSteps.cwl
inputs:
- id: n_steps
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: geom_steps
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- obconformer
- GeomSteps
