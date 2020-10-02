class: CommandLineTool
id: pblayout_m4_index.cwl
inputs:
- id: in_in_do_tm_four
  doc: STR  Input M4.
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pblayout
- m4-index
