class: CommandLineTool
id: trindex.cwl
inputs:
- id: in_c
  doc: ''
  type: string?
  inputBinding:
    prefix: -c
- id: in_var_1
  doc: ''
  type: string?
  inputBinding:
    prefix: -d
- id: in_var_2
  doc: ''
  type: string?
  inputBinding:
    prefix: -D
- id: in_options_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_alignment_i_it_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- trindex
