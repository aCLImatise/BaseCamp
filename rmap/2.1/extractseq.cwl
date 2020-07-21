class: CommandLineTool
id: ../../../extractseq.cwl
inputs:
- id: output
  doc: 'Name of output file (default: stdout) '
  type: boolean
  inputBinding:
    prefix: -output
- id: chrom
  doc: 'directory with chrom files (FASTA format) '
  type: boolean
  inputBinding:
    prefix: -chrom
- id: verbose
  doc: 'print more run info '
  type: boolean
  inputBinding:
    prefix: -verbose
- id: about
  doc: 'print about message '
  type: boolean
  inputBinding:
    prefix: -about
- id: bed_format_regions
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- extractseq
