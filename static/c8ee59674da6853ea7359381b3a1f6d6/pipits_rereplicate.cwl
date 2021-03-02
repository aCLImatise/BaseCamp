class: CommandLineTool
id: pipits_rereplicate.cwl
inputs:
- id: in_i
  doc: '[REQUIRED]'
  type: File?
  inputBinding:
    prefix: -i
- id: in_o
  doc: '[REQUIRED]'
  type: string?
  inputBinding:
    prefix: -o
- id: in_uc
  doc: '[REQUIRED] uc file from VSEARCH'
  type: File?
  inputBinding:
    prefix: --uc
- id: in_re_replicate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sequences_dot
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
- pipits_rereplicate
