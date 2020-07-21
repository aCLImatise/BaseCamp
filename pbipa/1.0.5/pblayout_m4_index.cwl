class: CommandLineTool
id: ../../../pblayout_m4_index.cwl
inputs:
- id: in_do_tm_four
  doc: STR  Input M4.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pblayout
- m4-index
