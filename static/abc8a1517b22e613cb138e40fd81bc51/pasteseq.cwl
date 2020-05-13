class: CommandLineTool
id: pasteseq.cwl
inputs:
- id: pos
  doc: integer    [$(asequence.end)] The position in the main input sequence to insert
    after. To insert before the start use the position 0. (Integer 0 or more)
  type: boolean
  inputBinding:
    prefix: -pos
outputs: []
cwlVersion: v1.1
baseCommand:
- pasteseq
