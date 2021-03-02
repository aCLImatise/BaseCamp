class: CommandLineTool
id: chopUpBackground.pl.cwl
inputs:
- id: in_target_seq_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_background_seq_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chopUpBackground.pl
