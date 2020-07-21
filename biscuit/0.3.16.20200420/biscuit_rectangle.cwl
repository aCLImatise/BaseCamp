class: CommandLineTool
id: ../../../biscuit_rectangle.cwl
inputs:
- id: output_file
  doc: output file [stdout]
  type: boolean
  inputBinding:
    prefix: -o
- id: ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- biscuit
- rectangle
