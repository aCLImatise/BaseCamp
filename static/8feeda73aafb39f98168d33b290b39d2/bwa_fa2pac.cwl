class: CommandLineTool
id: bwa_fa2pac.cwl
inputs:
- id: in_f
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_in_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_dot_prefix
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bwa
- fa2pac
