class: CommandLineTool
id: ../../../sortsam.cwl
inputs:
- id: pos
  doc: -- Sort by chromosome position
  type: boolean
  inputBinding:
    prefix: -pos
- id: idx
  doc: -- Sort by read_index position
  type: boolean
  inputBinding:
    prefix: -idx
outputs: []
cwlVersion: v1.1
baseCommand:
- sortsam
