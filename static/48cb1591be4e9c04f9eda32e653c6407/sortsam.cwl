class: CommandLineTool
id: sortsam.cwl
inputs:
- id: sort
  doc: chromosome position
  type: string
  inputBinding:
    prefix: -- Sort
- id: sort
  doc: read_index position
  type: string
  inputBinding:
    prefix: -- Sort
outputs: []
cwlVersion: v1.1
baseCommand:
- sortsam
