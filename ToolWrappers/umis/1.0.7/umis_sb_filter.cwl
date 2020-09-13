class: CommandLineTool
id: ../../../umis_sb_filter.cwl
inputs:
- id: in_bc
  doc: ''
  type: File
  inputBinding:
    prefix: --bc
- id: in_cores
  doc: ''
  type: long
  inputBinding:
    prefix: --cores
- id: in_nedit
  doc: ''
  type: long
  inputBinding:
    prefix: --nedit
- id: in_files_dot
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- umis
- sb_filter
