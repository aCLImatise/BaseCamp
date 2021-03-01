class: CommandLineTool
id: convertToAtac.cwl
inputs:
- id: in_two
  doc: ''
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_one
  doc: ''
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_f
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_asm_file_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_asm_file_two
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_matches_dot_sim_four_db
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_matches_dot_atac
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- convertToAtac
