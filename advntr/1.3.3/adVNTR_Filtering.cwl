class: CommandLineTool
id: ../../../adVNTR_Filtering.cwl
inputs:
- id: sequences_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: keywords_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- adVNTR-Filtering
