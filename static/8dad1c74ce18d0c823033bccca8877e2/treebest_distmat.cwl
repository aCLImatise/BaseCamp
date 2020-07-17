class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/treebest_distmat.cwl
inputs:
- id: dn_vertical_line_ds_vertical_line_dm_vertical_line_jtt_vertical_line_kimura_vertical_line_mm_vertical_line_dns
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignment
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- treebest
- distmat
