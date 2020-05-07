class: CommandLineTool
id: obconformer_NSteps_file.cwl
inputs:
- id: geom_steps
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- obconformer
- NSteps
- file
