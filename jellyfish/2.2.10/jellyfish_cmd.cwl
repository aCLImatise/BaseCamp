class: CommandLineTool
id: jellyfish_cmd.cwl
inputs:
- id: arg
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- jellyfish
- cmd
