class: CommandLineTool
id: miraligner.cwl
inputs:
- id: in_add
  doc: "nt allowed for addition processes\nDefault: 3"
  type: boolean
  inputBinding:
    prefix: -add
- id: in_db
  doc: database
  type: boolean
  inputBinding:
    prefix: -db
- id: in_debug
  doc: "add verbosity\nDefault: false"
  type: boolean
  inputBinding:
    prefix: -debug
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
- id: in_input
  doc: input
  type: boolean
  inputBinding:
    prefix: -i
- id: in_min_l
  doc: "minimum size\nDefault: 16"
  type: boolean
  inputBinding:
    prefix: -minl
- id: in_output
  doc: output
  type: boolean
  inputBinding:
    prefix: -o
- id: in_pre
  doc: "add reads mapping to precursor\nDefault: false"
  type: boolean
  inputBinding:
    prefix: -pre
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
- id: in_versiondefault_false
  doc: "version\nDefault: false"
  type: boolean
  inputBinding:
    prefix: -v
- id: in_main_class
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
- miraligner
