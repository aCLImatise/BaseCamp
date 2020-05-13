class: CommandLineTool
id: ufasta_cmd.cwl
inputs:
- id: arg
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ufasta
- cmd
