class: CommandLineTool
id: CircleCompare_output file.cwl
inputs:
- id: predicted_ct
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: accepted_ct
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- CircleCompare
- output file
