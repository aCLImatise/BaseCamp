class: CommandLineTool
id: align_it.cwl
inputs:
- id: in_reference
  doc: <file>
  type: boolean?
  inputBinding:
    prefix: --reference
- id: in_reftype
  doc: <type>
  type: boolean?
  inputBinding:
    prefix: --refType
- id: in_dbase
  doc: <file>
  type: boolean?
  inputBinding:
    prefix: --dbase
- id: in_dbtype
  doc: <type>
  type: boolean?
  inputBinding:
    prefix: --dbType
- id: in_pharmacophore
  doc: <file>
  type: boolean?
  inputBinding:
    prefix: --pharmacophore
- id: in_out
  doc: <file>
  type: boolean?
  inputBinding:
    prefix: --out
- id: in_out_type
  doc: <type>
  type: boolean?
  inputBinding:
    prefix: --outType
- id: in_scores
  doc: <file>
  type: boolean?
  inputBinding:
    prefix: --scores
- id: in_cut_off
  doc: <double>
  type: boolean?
  inputBinding:
    prefix: --cutOff
- id: in_best
  doc: <int>
  type: boolean?
  inputBinding:
    prefix: --best
- id: in_epsilon
  doc: <double>
  type: boolean?
  inputBinding:
    prefix: --epsilon
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- align-it
