class: CommandLineTool
id: ufasta_arg....cwl
inputs:
- id: cmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: arg
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ufasta
- arg...
