class: CommandLineTool
id: verify_layout.cwl
inputs:
- id: in_verbose
  doc: "the coordinates and bases for each read in layout\nreadid rc offset roffset\
    \ len bases\n"
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_bank_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- verify-layout
