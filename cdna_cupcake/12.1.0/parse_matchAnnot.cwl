class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/parse_matchAnnot.py.cwl
inputs:
- id: not_p_bid
  doc: ''
  type: boolean
  inputBinding:
    prefix: --not_pbid
- id: parse_fl_coverage
  doc: ''
  type: boolean
  inputBinding:
    prefix: --parse_FL_coverage
- id: parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: match_an_not
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: result
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- parse_matchAnnot.py
