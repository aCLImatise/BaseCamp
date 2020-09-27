class: CommandLineTool
id: intersection_matrix.py.cwl
inputs:
- id: in_n
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_run
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_send
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_matrix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_example
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_their
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_intersections
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- intersection_matrix.py
