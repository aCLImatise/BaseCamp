class: CommandLineTool
id: ../../../align_it.cwl
inputs:
- id: in_reference
  doc: <file>
  type: boolean
  inputBinding:
    prefix: --reference
- id: in_reftype
  doc: <type>
  type: boolean
  inputBinding:
    prefix: --refType
- id: in_dbase
  doc: <file>
  type: boolean
  inputBinding:
    prefix: --dbase
- id: in_dbtype
  doc: <type>
  type: boolean
  inputBinding:
    prefix: --dbType
- id: in_pharmacophore
  doc: <file>
  type: boolean
  inputBinding:
    prefix: --pharmacophore
- id: in_out
  doc: <file>
  type: boolean
  inputBinding:
    prefix: --out
- id: in_out_type
  doc: <type>
  type: boolean
  inputBinding:
    prefix: --outType
- id: in_scores
  doc: <file>
  type: boolean
  inputBinding:
    prefix: --scores
- id: in_cut_off
  doc: <double>
  type: boolean
  inputBinding:
    prefix: --cutOff
- id: in_best
  doc: <int>
  type: boolean
  inputBinding:
    prefix: --best
- id: in_rank_by
  doc: <TANIMOTO|TVERSKY_REF|TVERSKY_DB>
  type: boolean
  inputBinding:
    prefix: --rankBy
- id: in_func_group
  doc: <AROM|HDON|HACC|LIPO|CHARGE>
  type: boolean
  inputBinding:
    prefix: --funcGroup
- id: in_epsilon
  doc: <double>
  type: boolean
  inputBinding:
    prefix: --epsilon
- id: in_merge
  doc: ''
  type: boolean
  inputBinding:
    prefix: --merge
- id: in_no_normal
  doc: ''
  type: boolean
  inputBinding:
    prefix: --noNormal
- id: in_no_hybrid
  doc: ''
  type: boolean
  inputBinding:
    prefix: --noHybrid
- id: in_with_exclusion
  doc: ''
  type: boolean
  inputBinding:
    prefix: --withExclusion
- id: in_score_only
  doc: ''
  type: boolean
  inputBinding:
    prefix: --scoreOnly
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_info
  doc: <option>
  type: boolean
  inputBinding:
    prefix: --info
- id: in_quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- align-it
