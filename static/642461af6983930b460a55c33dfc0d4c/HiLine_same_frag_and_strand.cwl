class: CommandLineTool
id: ../../../HiLine_same_frag_and_strand.cwl
inputs:
- id: sort
  doc: / --no-sort  Sort and index output. Default=sort
  type: boolean
  inputBinding:
    prefix: --sort
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- HiLine
- same-frag-and-strand
