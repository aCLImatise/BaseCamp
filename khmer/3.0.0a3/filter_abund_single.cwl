class: CommandLineTool
id: ../../../filter_abund_single.py.cwl
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
- id: k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
- id: input_sequence_filename
  doc: FAST[AQ] sequence file to trim
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- filter-abund-single.py
