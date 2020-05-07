class: CommandLineTool
id: smafa_makedb.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: db_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: db
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: amino_acid
  doc: 'Sequences are amino acid [default: nucleotide]'
  type: boolean
  inputBinding:
    prefix: --amino-acid
- id: quiet
  doc: Unless there is an error, do not print logging information
  type: boolean
  inputBinding:
    prefix: --quiet
- id: translate
  doc: Translate input before generating DB
  type: boolean
  inputBinding:
    prefix: --translate
- id: verbose
  doc: Print extra debug logging information
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- smafa
- makedb
