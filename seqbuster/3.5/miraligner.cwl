class: CommandLineTool
id: ../../../miraligner.cwl
inputs:
- id: in_add
  doc: "nt allowed for addition processes\nDefault: 3"
  type: boolean
  inputBinding:
    prefix: -add
- id: in_db
  doc: ''
  type: boolean
  inputBinding:
    prefix: -db
- id: in_format
  doc: "format input\nDefault: none"
  type: boolean
  inputBinding:
    prefix: -format
- id: in_freq
  doc: "add freq information\nDefault: true"
  type: boolean
  inputBinding:
    prefix: -freq
- id: in_i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
- id: in_three_letter_code
  doc: three letter code for species
  type: boolean
  inputBinding:
    prefix: -s
- id: in_sub
  doc: "nt allowed for substitution processes\nDefault: 1"
  type: boolean
  inputBinding:
    prefix: -sub
- id: in_trim
  doc: "nt allowed for trimming processes\nDefault: 3"
  type: boolean
  inputBinding:
    prefix: -trim
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_database
  doc: -debug
  type: string
  inputBinding:
    position: 0
- id: in_help
  doc: 'Default: false'
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: -minl
  type: string
  inputBinding:
    position: 1
- id: in_one_six
  doc: -o
  type: long
  inputBinding:
    position: 0
- id: in_output
  doc: -pre
  type: string
  inputBinding:
    position: 1
- id: in_version
  doc: 'Default: false'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- miraligner
