class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nw_match.cwl
inputs:
- id: hv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hv
- id: target_trees_filename_vertical_line
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pattern
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_match
