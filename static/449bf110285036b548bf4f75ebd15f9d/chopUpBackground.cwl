class: CommandLineTool
id: ../../../chopUpBackground.pl.cwl
inputs:
- id: target_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: background_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- chopUpBackground.pl
