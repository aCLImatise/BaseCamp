class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/genomepy_plugin.cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- genomepy
- plugin
