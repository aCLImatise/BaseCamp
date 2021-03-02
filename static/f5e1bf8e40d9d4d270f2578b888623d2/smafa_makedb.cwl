class: CommandLineTool
id: smafa_makedb.cwl
inputs:
- id: in_amino_acid
  doc: 'Sequences are amino acid [default: nucleotide]'
  type: boolean?
  inputBinding:
    prefix: --amino-acid
- id: in_quiet
  doc: Unless there is an error, do not print logging information
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_translate
  doc: Translate input before generating DB
  type: boolean?
  inputBinding:
    prefix: --translate
- id: in_verbose
  doc: Print extra debug logging information
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_db_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- smafa
- makedb
