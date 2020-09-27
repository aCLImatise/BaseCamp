class: CommandLineTool
id: extract_partitions.py.cwl
inputs:
- id: in_info
  doc: print citation information
  type: boolean
  inputBinding:
    prefix: --info
- id: in_max_size
  doc: 'Max group size (n sequences) (default: 1000000)'
  type: long
  inputBinding:
    prefix: --max-size
- id: in_min_partition_size
  doc: 'Minimum partition size worth keeping (default: 5)'
  type: long
  inputBinding:
    prefix: --min-partition-size
- id: in_no_output_groups
  doc: 'Do not actually output groups files. (default: True)'
  type: boolean
  inputBinding:
    prefix: --no-output-groups
- id: in_output_unassigned
  doc: 'Output unassigned sequences, too (default: False)'
  type: boolean
  inputBinding:
    prefix: --output-unassigned
- id: in_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File
  inputBinding:
    prefix: --force
- id: in_gzip
  doc: 'Compress output using gzip (default: False)'
  type: boolean
  inputBinding:
    prefix: --gzip
- id: in_bzip
  doc: 'Compress output using bzip2 (default: False)'
  type: boolean
  inputBinding:
    prefix: --bzip
- id: in_output_filename_prefix
  doc: input_partition_filename
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File
  outputBinding:
    glob: $(inputs.in_force)
cwlVersion: v1.1
baseCommand:
- extract-partitions.py
