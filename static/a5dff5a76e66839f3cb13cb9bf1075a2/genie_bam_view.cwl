class: CommandLineTool
id: genie_bam_view.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_path
  doc: A bam file (*require)
  type: string
  inputBinding:
    prefix: --filepath
- id: header_only
  doc: Show the header only
  type: boolean
  inputBinding:
    prefix: --headeronly
- id: human_readable
  doc: Show reads in human readable format
  type: boolean
  inputBinding:
    prefix: --human-readable
- id: include_header
  doc: Show header and records
  type: boolean
  inputBinding:
    prefix: --includeheader
- id: limit_reads
  doc: Limit reads (-1 is unlimited) (default -1)
  type: long
  inputBinding:
    prefix: --limitreads
- id: scope
  doc: Scope chr:begin-end
  type: string
  inputBinding:
    prefix: --scope
outputs: []
cwlVersion: v1.1
baseCommand:
- genie
- bam
- view
