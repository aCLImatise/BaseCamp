class: CommandLineTool
id: treebest_distmat.cwl
inputs:
- id: in_dn_vertical_line_ds_vertical_line_dm_vertical_line_jtt_vertical_line_kimura_vertical_line_mm_vertical_line_dns
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_alignment
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- treebest
- distmat
