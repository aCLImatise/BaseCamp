class: CommandLineTool
id: ../../../all_pairs_quartet_dist.cwl
inputs:
- id: input_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- all_pairs_quartet_dist
