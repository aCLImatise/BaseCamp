class: CommandLineTool
id: parse_matchAnnot.py.cwl
inputs:
- id: in_parse_fl_coverage
  doc: ''
  type: boolean
  inputBinding:
    prefix: --parse_FL_coverage
- id: in_not_p_bid
  doc: ''
  type: boolean
  inputBinding:
    prefix: --not_pbid
- id: in_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_match_an_not
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_result
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- parse_matchAnnot.py
