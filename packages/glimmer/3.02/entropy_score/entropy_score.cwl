class: CommandLineTool
id: entropy_score.cwl
inputs:
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_coords
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- entropy-score
