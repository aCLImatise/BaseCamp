class: CommandLineTool
id: ../../../nasp_output_folder.cwl
inputs:
- id: config
  doc: ''
  type: string
  inputBinding:
    prefix: --config
- id: nasp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_folder
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- nasp
- output_folder
