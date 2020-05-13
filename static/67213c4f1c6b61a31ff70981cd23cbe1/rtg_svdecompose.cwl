class: CommandLineTool
id: rtg_svdecompose.cwl
inputs:
- id: input
  doc: VCF file containing variants to filter. Use '-' to read from standard input
  type: File
  inputBinding:
    prefix: --input
- id: output
  doc: output VCF file name. Use '-' to write to standard output
  type: File
  inputBinding:
    prefix: --output
- id: min_in_del_length
  doc: minimum length for converting precise insertions and deletions to breakend
    (Default is 20)
  type: long
  inputBinding:
    prefix: --min-indel-length
- id: no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
- id: no_header
  doc: prevent VCF header from being written
  type: boolean
  inputBinding:
    prefix: --no-header
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- svdecompose
