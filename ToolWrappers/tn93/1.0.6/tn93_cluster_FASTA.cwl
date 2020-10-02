class: CommandLineTool
id: tn93_cluster_FASTA.cwl
inputs:
- id: in_q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: in_m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: in_c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
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
- tn93-cluster
- FASTA
