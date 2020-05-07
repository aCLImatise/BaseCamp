class: CommandLineTool
id: interleave_reads.py.cwl
inputs:
- id: no_reformat
  doc: 'Do not reformat read names or enforce consistency (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-reformat
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
- interleave-reads.py
