class: CommandLineTool
id: extract_paired_reads.py.cwl
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
- id: output_paired
  doc: 'Output paired reads to this file (default: None)'
  type: File
  inputBinding:
    prefix: --output-paired
- id: output_single
  doc: 'Output orphaned reads to this file (default: None)'
  type: File
  inputBinding:
    prefix: --output-single
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
- extract-paired-reads.py
