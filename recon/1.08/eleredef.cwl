class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/eleredef.cwl
inputs:
- id: re_def
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_list
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: clan_ct
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- eleredef
