class: CommandLineTool
id: planemo_clone_PROJECT.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: target
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: project
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- clone
- PROJECT
