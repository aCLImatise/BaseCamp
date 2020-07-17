class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/wdl_parse_wdl_file.cwl
inputs:
- id: debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
- id: no_color
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no-color
- id: wdl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- wdl
- parse
- wdl_file
