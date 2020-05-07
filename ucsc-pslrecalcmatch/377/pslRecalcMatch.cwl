class: CommandLineTool
id: pslRecalcMatch.cwl
inputs:
- id: in_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: target_seq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: query_seq
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_psl
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: ignore_q_missing
  doc: the record if querySeq doesn't include qName
  type: string
  inputBinding:
    prefix: -ignoreQMissing
outputs: []
cwlVersion: v1.1
baseCommand:
- pslRecalcMatch
