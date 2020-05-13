class: CommandLineTool
id: gmx.cwl
inputs:
- id: commands
  doc: List of available commands
  type: string
  inputBinding:
    position: 0
- id: selections
  doc: Selection syntax and usage
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gmx
