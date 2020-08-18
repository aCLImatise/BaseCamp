class: CommandLineTool
id: ../../../2csfastq_1csfastq.cwl
inputs:
- id: cs_fast_q_one
  doc: ''
  type: string
  inputBinding:
    prefix: -csfastq1
- id: cs_fast_q_two
  doc: ''
  type: string
  inputBinding:
    prefix: -csfastq2
- id: tags
  doc: ''
  type: string
  inputBinding:
    prefix: -tags
- id: tone
  doc: ''
  type: string
  inputBinding:
    prefix: -t1
- id: t_two
  doc: ''
  type: string
  inputBinding:
    prefix: -t2
- id: double_encoded
  doc: ''
  type: boolean
  inputBinding:
    prefix: -double-encoded
- id: tag_two
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- 2csfastq_1csfastq
