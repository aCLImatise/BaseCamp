class: CommandLineTool
id: extract_partitions.py.cwl
inputs:
- id: info
  doc: print citation information
  type: boolean
  inputBinding:
    prefix: --info
- id: max_size
  doc: 'Max group size (n sequences) (default: 1000000)'
  type: long
  inputBinding:
    prefix: --max-size
- id: min_partition_size
  doc: 'Minimum partition size worth keeping (default: 5)'
  type: long
  inputBinding:
    prefix: --min-partition-size
- id: no_output_groups
  doc: 'Do not actually output groups files. (default: True)'
  type: boolean
  inputBinding:
    prefix: --no-output-groups
- id: output_unassigned
  doc: 'Output unassigned sequences, too (default: False)'
  type: boolean
  inputBinding:
    prefix: --output-unassigned
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
- extract-partitions.py
