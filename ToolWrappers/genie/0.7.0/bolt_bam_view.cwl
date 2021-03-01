class: CommandLineTool
id: bolt_bam_view.cwl
inputs:
- id: in_file_path
  doc: A bam file (*require)
  type: File?
  inputBinding:
    prefix: --filepath
- id: in_header_only
  doc: Show the header only
  type: boolean?
  inputBinding:
    prefix: --headeronly
- id: in_human_readable
  doc: Show reads in human readable format
  type: boolean?
  inputBinding:
    prefix: --human-readable
- id: in_include_header
  doc: Show header and records
  type: boolean?
  inputBinding:
    prefix: --includeheader
- id: in_limit_reads
  doc: Limit reads (-1 is unlimited) (default -1)
  type: long?
  inputBinding:
    prefix: --limitreads
- id: in_scope
  doc: Scope chr:begin-end
  type: string?
  inputBinding:
    prefix: --scope
- id: in_genie
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_view
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bolt
- bam
- view
