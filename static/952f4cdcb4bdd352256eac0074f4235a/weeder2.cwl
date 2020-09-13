class: CommandLineTool
id: ../../../weeder2.cwl
inputs:
- id: in_chips_eq
  doc: ''
  type: boolean
  inputBinding:
    prefix: -chipseq
- id: in_top
  doc: '(DEFAULT: 100)'
  type: long
  inputBinding:
    prefix: -top
- id: in_b
  doc: '(DEFAULT: 50)'
  type: long
  inputBinding:
    prefix: -b
- id: in_maxm
  doc: '(DEFAULT: 25)'
  type: long
  inputBinding:
    prefix: -maxm
- id: in_ss
  doc: ''
  type: boolean
  inputBinding:
    prefix: -ss
- id: in_sim
  doc: '(DEFAULT: 0.95 MIN: 0 MAX: 1)'
  type: long
  inputBinding:
    prefix: -sim
- id: in_em
  doc: '(DEFAULT: 1 MIN: 0 MAX: 100)'
  type: long
  inputBinding:
    prefix: -em
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- weeder2
