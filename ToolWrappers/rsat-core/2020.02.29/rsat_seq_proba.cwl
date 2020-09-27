class: CommandLineTool
id: rsat_seq_proba.cwl
inputs:
- id: in_seq_proba
  doc: "\e[1mDESCRIPTION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_jacques_dot_van_helden_backslash_at_univ_am_udot_fr
  doc: "\e[1mCATEGORY\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_util
  doc: "\e[1mUSAGE\e[0m"
  type: string
  inputBinding:
    position: 1
- id: in_convert_background_model
  doc: matrix-scan
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- seq-proba
