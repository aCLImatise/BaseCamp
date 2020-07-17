class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/draw_model_graph_sequence_number.cwl
inputs:
- id: draw_model_graph
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: model
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sequence_number
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- draw_model_graph
- sequence_number
