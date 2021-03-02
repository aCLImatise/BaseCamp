class: CommandLineTool
id: ecofind_patterns.cwl
inputs:
- id: in_s
  doc: ''
  type: string?
  inputBinding:
    prefix: -s
- id: in_var_1
  doc: ''
  type: string?
  inputBinding:
    prefix: -p
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
- id: in_var_3
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_l
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_d
  doc: ''
  type: string?
  inputBinding:
    prefix: -d
- id: in_eco_find
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_rank
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_type
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ecofind
- patterns
