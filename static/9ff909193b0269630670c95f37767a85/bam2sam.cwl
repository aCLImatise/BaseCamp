class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bam2sam.cwl
inputs:
- id: no_header
  doc: Omit header from output.
  type: boolean
  inputBinding:
    prefix: --no-header
- id: header_only
  doc: Print only the header (no records).
  type: boolean
  inputBinding:
    prefix: --header-only
- id: in_dot_bam
  doc: FILE  Input BAM file. If not provided, stdin will be used as input.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2sam
