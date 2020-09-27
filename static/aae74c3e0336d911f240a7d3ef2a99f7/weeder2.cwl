class: CommandLineTool
id: weeder2.cwl
inputs:
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
