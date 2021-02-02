class: CommandLineTool
id: cands.cwl
inputs:
- id: in_t
  doc: ''
  type: File
  inputBinding:
    prefix: -t
- id: in_l
  doc: ''
  type: File
  inputBinding:
    prefix: -l
- id: in_m
  doc: ''
  type: File
  inputBinding:
    prefix: -m
- id: in_r
  doc: ''
  type: File
  inputBinding:
    prefix: -r
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: in_that
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_will
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_contain
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_c_and
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_created
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_can_d_file
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
- cands
