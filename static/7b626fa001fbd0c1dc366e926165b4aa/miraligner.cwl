class: CommandLineTool
id: miraligner.cwl
inputs:
- id: in_add
  doc: "nt allowed for addition processes\nDefault: 3"
  type: boolean?
  inputBinding:
    prefix: -add
- id: in_format
  doc: "format input\nDefault: none"
  type: boolean?
  inputBinding:
    prefix: -format
- id: in_freq
  doc: "add freq information\nDefault: true"
  type: boolean?
  inputBinding:
    prefix: -freq
- id: in_three_letter_code
  doc: three letter code for species
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_sub
  doc: "nt allowed for substitution processes\nDefault: 1"
  type: boolean?
  inputBinding:
    prefix: -sub
- id: in_trim
  doc: "nt allowed for trimming processes\nDefault: 3"
  type: boolean?
  inputBinding:
    prefix: -trim
- id: in_help
  doc: 'Default: false'
  type: string
  inputBinding:
    position: 0
- id: in_version
  doc: 'Default: false'
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
- miraligner
