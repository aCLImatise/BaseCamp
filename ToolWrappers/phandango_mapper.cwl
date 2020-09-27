class: CommandLineTool
id: phandango_mapper.cwl
inputs:
- id: in_bwa
  doc: 'Location of bwa executable [Default: bwa]'
  type: string
  inputBinding:
    prefix: --bwa
- id: in_tmp_prefix
  doc: 'Directory to store temporary files [Default: cwd]'
  type: Directory
  inputBinding:
    prefix: --tmp-prefix
- id: in_use_filter_p
  doc: 'Plot the unadjusted p-value [Default: lrt-p-value]'
  type: boolean
  inputBinding:
    prefix: --use-filter-p
- id: in_km_ers
  doc: Kmers file, filtered output from SEER
  type: string
  inputBinding:
    position: 0
- id: in_reference
  doc: Reference fasta file
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: Output file
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phandango_mapper
