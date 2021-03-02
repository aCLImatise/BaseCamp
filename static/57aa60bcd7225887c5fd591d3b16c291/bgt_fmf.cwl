class: CommandLineTool
id: bgt_fmf.cwl
inputs:
- id: in_load_entire_fmf
  doc: load the entire FMF into RAM
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_only_output_name
  doc: only output the row name (the 1st column)
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_mn
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -mn
- id: in_fmf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_fmf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_condition
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bgt
- fmf
