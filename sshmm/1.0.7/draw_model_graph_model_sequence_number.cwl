class: CommandLineTool
id: draw_model_graph_model_sequence_number.cwl
inputs:
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- draw_model_graph
- model
- sequence_number
