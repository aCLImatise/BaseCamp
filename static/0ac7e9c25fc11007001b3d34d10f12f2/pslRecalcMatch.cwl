class: CommandLineTool
id: ../../../pslRecalcMatch.cwl
inputs:
- id: ignore_q_missing
  doc: "- pass through the record if querySeq doesn't include qName"
  type: boolean
  inputBinding:
    prefix: -ignoreQMissing
- id: in_dot_psl
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
- id: out_dot_psl
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- pslRecalcMatch
