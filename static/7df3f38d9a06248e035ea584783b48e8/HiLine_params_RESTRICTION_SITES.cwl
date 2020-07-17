class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/HiLine_params_RESTRICTION_SITES.cwl
inputs:
- id: hi_line
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: params
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: reference
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: restriction_sites
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- HiLine
- params
- RESTRICTION_SITES
