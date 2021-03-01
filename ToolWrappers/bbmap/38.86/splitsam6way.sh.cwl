class: CommandLineTool
id: splitsam6way.sh.cwl
inputs:
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_r_one_plus
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_r_one_minus
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_r_one_unmapped
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: in_r_two_plus
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: in_r_two_minus
  doc: ''
  type: long
  inputBinding:
    position: 5
- id: in_r_two_unmapped
  doc: ''
  type: long
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- splitsam6way.sh
