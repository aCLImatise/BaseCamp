class: CommandLineTool
id: overlap_align.cwl
inputs:
- id: in_fast_a_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_fast_a_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- overlap-align
