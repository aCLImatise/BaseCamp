class: CommandLineTool
id: bam2sam.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2sam
