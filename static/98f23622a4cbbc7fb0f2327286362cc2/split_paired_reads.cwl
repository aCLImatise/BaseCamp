class: CommandLineTool
id: ../../../split_paired_reads.py.cwl
inputs:
- id: info
  doc: print citation information
  type: boolean
  inputBinding:
    prefix: --info
- id: output_dir
  doc: 'Output split reads to specified directory. Creates directory if necessary
    (default: )'
  type: string
  inputBinding:
    prefix: --output-dir
- id: output_orphaned
  doc: 'Allow "orphaned" reads and extract them to this file (default: None)'
  type: string
  inputBinding:
    prefix: --output-orphaned
- id: output_first
  doc: 'Output "left" reads to this file (default: None)'
  type: string
  inputBinding:
    prefix: --output-first
- id: output_second
  doc: 'Output "right" reads to this file (default: None)'
  type: string
  inputBinding:
    prefix: --output-second
- id: force
  doc: 'Overwrite output file if it exists (default: False)'
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
- split-paired-reads.py
