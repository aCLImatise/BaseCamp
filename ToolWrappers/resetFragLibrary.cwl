class: CommandLineTool
id: resetFragLibrary.cwl
inputs:
- id: in_update_clr_ranges
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bank_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_frag_id_dot_newlib_id
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- resetFragLibrary
