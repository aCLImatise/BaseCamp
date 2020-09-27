class: CommandLineTool
id: selectreads_FASTA.cwl
inputs:
- id: in_q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: in_e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- selectreads
- FASTA
