class: CommandLineTool
id: tn93_cluster_FASTA.cwl
inputs:
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- tn93-cluster
- FASTA
