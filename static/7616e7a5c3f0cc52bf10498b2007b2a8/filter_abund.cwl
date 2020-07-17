class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/filter_abund.py.cwl
inputs:
- id: gzip
  doc: 'Compress output using gzip (default: False)'
  type: boolean
  inputBinding:
    prefix: --gzip
- id: bzip
  doc: 'Compress output using bzip2 (default: False)'
  type: boolean
  inputBinding:
    prefix: --bzip
- id: info
  doc: ''
  type: boolean
  inputBinding:
    prefix: --info
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -T
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -C
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
- id: input_count_graph_filename
  doc: The input k-mer countgraph filename
  type: string
  inputBinding:
    position: 0
- id: input_sequence_filename
  doc: Input FAST[AQ] sequence filename
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- filter-abund.py
