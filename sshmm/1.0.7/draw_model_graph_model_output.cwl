class: CommandLineTool
id: draw_model_graph_model_output.cwl
inputs:
- id: sequence_number
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- draw_model_graph
- model
- output
