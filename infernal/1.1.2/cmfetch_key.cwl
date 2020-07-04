class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cmfetch_key.cwl
inputs:
- id: cm_fetch
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: key
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- cmfetch
- key
