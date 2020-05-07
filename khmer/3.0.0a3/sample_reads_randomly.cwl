class: CommandLineTool
id: sample_reads_randomly.py.cwl
inputs:
- id: force
  doc: 'Overwrite output file if it exits (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
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
- sample-reads-randomly.py
