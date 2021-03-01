class: CommandLineTool
id: fastx_trimmer.cwl
inputs:
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: File?
  inputBinding:
    prefix: -i
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_z
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_m
  doc: ''
  type: long?
  inputBinding:
    prefix: -m
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_l
  doc: ''
  type: string?
  inputBinding:
    prefix: -l
- id: in_f
  doc: ''
  type: string?
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastx_trimmer
