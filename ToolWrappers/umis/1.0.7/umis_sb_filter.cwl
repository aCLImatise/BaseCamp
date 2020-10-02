class: CommandLineTool
id: umis_sb_filter.cwl
inputs:
- id: in_bc
  doc: "--cores INTEGER\n--nedit INTEGER\n--help           Show this message and exit.\n"
  type: File
  inputBinding:
    prefix: --bc
- id: in_fast_q
  doc: ''
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
