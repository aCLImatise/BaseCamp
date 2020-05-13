class: CommandLineTool
id: draw_model_graph_sequence_number.cwl
inputs:
- id: model
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequence_number
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- draw_model_graph
- sequence_number
