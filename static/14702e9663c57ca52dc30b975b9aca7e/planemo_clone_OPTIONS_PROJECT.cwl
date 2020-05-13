class: CommandLineTool
id: planemo_clone_OPTIONS_PROJECT.cwl
inputs:
- id: target
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: project
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- clone
- OPTIONS
- PROJECT
