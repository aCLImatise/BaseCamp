class: CommandLineTool
id: ../../../dedup_FLNC_per_cluster.py.cwl
inputs:
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    prefix: --fasta
- id: gff
  doc: ''
  type: string
  inputBinding:
    prefix: --gff
- id: de_duplicate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fl_nc
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: reads
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: per
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: cluster
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- dedup_FLNC_per_cluster.py
