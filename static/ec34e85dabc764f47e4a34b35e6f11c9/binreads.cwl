class: CommandLineTool
id: ../../../binreads.cwl
inputs:
- id: output
  doc: 'Name of output file (default: stdout) '
  type: boolean
  inputBinding:
    prefix: -output
- id: chrom
  doc: 'chrom sizes file '
  type: boolean
  inputBinding:
    prefix: -chrom
- id: verbose
  doc: 'print more run info '
  type: boolean
  inputBinding:
    prefix: -verbose
- id: bin
  doc: 'size of bins '
  type: boolean
  inputBinding:
    prefix: -bin
- id: about
  doc: 'print about message '
  type: boolean
  inputBinding:
    prefix: -about
- id: bed_format_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- binreads
