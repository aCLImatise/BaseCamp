class: CommandLineTool
id: spades_bwa_fa2pac.cwl
inputs:
- id: in_f
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fa_two_pac
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_in_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_out_dot_prefix
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- spades-bwa
- fa2pac
