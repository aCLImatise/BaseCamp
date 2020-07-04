class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/miraligner.cwl
inputs:
- id: add
  doc: 'nt allowed for addition processes Default: 3'
  type: boolean
  inputBinding:
    prefix: -add
- id: db
  doc: database
  type: boolean
  inputBinding:
    prefix: -db
- id: debug
  doc: 'add verbosity Default: false'
  type: boolean
  inputBinding:
    prefix: -debug
- id: format
  doc: 'format input Default: none'
  type: boolean
  inputBinding:
    prefix: -format
- id: freq
  doc: 'add freq information Default: true'
  type: boolean
  inputBinding:
    prefix: -freq
- id: input
  doc: input
  type: boolean
  inputBinding:
    prefix: -i
- id: min_l
  doc: 'minimum size Default: 16'
  type: boolean
  inputBinding:
    prefix: -minl
- id: output
  doc: output
  type: boolean
  inputBinding:
    prefix: -o
- id: pre
  doc: 'add reads mapping to precursor Default: false'
  type: boolean
  inputBinding:
    prefix: -pre
- id: three_letter_code
  doc: three letter code for species
  type: boolean
  inputBinding:
    prefix: -s
- id: sub
  doc: 'nt allowed for substitution processes Default: 1'
  type: boolean
  inputBinding:
    prefix: -sub
- id: trim
  doc: 'nt allowed for trimming processes Default: 3'
  type: boolean
  inputBinding:
    prefix: -trim
- id: version_default_false
  doc: 'version Default: false'
  type: boolean
  inputBinding:
    prefix: -v
- id: main_class
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- miraligner
