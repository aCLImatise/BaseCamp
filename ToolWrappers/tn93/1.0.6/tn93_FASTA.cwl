class: CommandLineTool
id: tn93_FASTA.cwl
inputs:
- id: in_q
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_zero
  doc: ''
  type: boolean?
  inputBinding:
    prefix: '-0'
- id: in_c
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_r
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_b
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_s
  doc: ''
  type: string?
  inputBinding:
    prefix: -s
- id: in_f
  doc: ''
  type: string?
  inputBinding:
    prefix: -f
- id: in_d
  doc: ''
  type: string?
  inputBinding:
    prefix: -d
- id: in_l
  doc: ''
  type: string?
  inputBinding:
    prefix: -l
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -g
- id: in_a
  doc: ''
  type: string?
  inputBinding:
    prefix: -a
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tn93
- FASTA
