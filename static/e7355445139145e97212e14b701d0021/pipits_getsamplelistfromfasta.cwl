class: CommandLineTool
id: pipits_getsamplelistfromfasta.cwl
inputs:
- id: in_o
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: File?
  inputBinding:
    prefix: -i
- id: in_creates
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sample
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 4
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_sequences_dot
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pipits_getsamplelistfromfasta
