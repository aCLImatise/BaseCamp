class: CommandLineTool
id: phandango_mapper.cwl
inputs:
- id: km_ers
  doc: Kmers file, filtered output from SEER
  type: string
  inputBinding:
    position: 0
- id: reference
  doc: Reference fasta file
  type: string
  inputBinding:
    position: 1
- id: output
  doc: Output file
  type: string
  inputBinding:
    position: 2
- id: bwa
  doc: 'Location of bwa executable [Default: bwa]'
  type: string
  inputBinding:
    prefix: --bwa
- id: tmp_prefix
  doc: 'Directory to store temporary files [Default: cwd]'
  type: string
  inputBinding:
    prefix: --tmp-prefix
- id: use_filter_p
  doc: 'Plot the unadjusted p-value [Default: lrt-p-value]'
  type: boolean
  inputBinding:
    prefix: --use-filter-p
outputs: []
cwlVersion: v1.1
baseCommand:
- phandango_mapper
