class: CommandLineTool
id: Minimo.cwl
inputs:
- id: in_d
  doc: ''
  type: string
  inputBinding:
    prefix: -D
- id: in_v_one_dot_eight
  doc: ''
  type: double
  inputBinding:
    position: 0
- id: in_copyright
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_florent
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_an_gly
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_two_zero_one_zero_dot
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: in_under
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_gpl
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_v_three
  doc: ''
  type: long
  inputBinding:
    position: 8
- id: in_open_source
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Minimo
