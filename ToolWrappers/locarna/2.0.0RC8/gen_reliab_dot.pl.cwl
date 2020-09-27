class: CommandLineTool
id: gen_reliab_dot.pl.cwl
inputs:
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: in_a
  doc: ''
  type: File
  inputBinding:
    prefix: -a
- id: in_f
  doc: ''
  type: File
  inputBinding:
    prefix: -f
- id: in_q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_man
  doc: ''
  type: string
  inputBinding:
    prefix: --man
- id: in_alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_help
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reliability
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gen-reliab-dot.pl
