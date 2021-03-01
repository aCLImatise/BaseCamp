class: CommandLineTool
id: metagenomics_ovl_analyses.cwl
inputs:
- id: in_var_0
  doc: ''
  type: string?
  inputBinding:
    prefix: -s
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -g
- id: in_d
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_e
  doc: ''
  type: string?
  inputBinding:
    prefix: -e
- id: in_var_5
  doc: ''
  type: string?
  inputBinding:
    prefix: -b
- id: in_var_6
  doc: ''
  type: File?
  inputBinding:
    prefix: -S
- id: in_c
  doc: ''
  type: File?
  inputBinding:
    prefix: -C
- id: in_var_8
  doc: ''
  type: File?
  inputBinding:
    prefix: -B
- id: in_a
  doc: ''
  type: File?
  inputBinding:
    prefix: -A
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- metagenomics_ovl_analyses
