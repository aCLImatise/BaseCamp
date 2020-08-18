class: CommandLineTool
id: ../../../Clustering.cwl
inputs:
- id: main
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: command_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: args_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- Clustering
