class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/edgeredef.cwl
inputs:
- id: fam_def
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
outputs: []
cwlVersion: v1.1
baseCommand:
- edgeredef
