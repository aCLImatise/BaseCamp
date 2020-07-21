class: CommandLineTool
id: ../../../hgFakeAgp.cwl
inputs:
- id: input_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_dot_agp
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- hgFakeAgp
