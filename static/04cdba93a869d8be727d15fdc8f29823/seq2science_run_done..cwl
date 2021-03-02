class: CommandLineTool
id: seq2science_run_done..cwl
inputs:
- id: in_unlock
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --unlock
- id: in_n
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_j
  doc: ''
  type: string?
  inputBinding:
    prefix: -j
- id: in_c
  doc: ''
  type: File?
  inputBinding:
    prefix: -c
- id: in_seq_two_science
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_run
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seq2science
- run
- done.
