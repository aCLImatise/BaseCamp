class: CommandLineTool
id: mhpl8r_unite_dad.cwl
inputs:
- id: in_s
  doc: ''
  type: long
  inputBinding:
    prefix: -s
- id: in_o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
- id: in_mhp_leigh_tr
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_unite
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_mom
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_dad
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mhpl8r
- unite
- dad
