class: CommandLineTool
id: filter_abund.py.cwl
inputs:
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
outputs: []
cwlVersion: v1.1
baseCommand:
- filter-abund.py
