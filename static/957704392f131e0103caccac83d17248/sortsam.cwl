class: CommandLineTool
id: sortsam.cwl
inputs:
- id: in_pos
  doc: -- Sort by chromosome position
  type: boolean?
  inputBinding:
    prefix: -pos
- id: in_idx
  doc: -- Sort by read_index position
  type: boolean?
  inputBinding:
    prefix: -idx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sortsam
