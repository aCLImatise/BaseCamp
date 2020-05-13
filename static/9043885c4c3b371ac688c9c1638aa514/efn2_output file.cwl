class: CommandLineTool
id: efn2_output file.cwl
inputs:
- id: ct_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- efn2
- output file
