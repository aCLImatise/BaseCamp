class: CommandLineTool
id: draw_model_graph_output.cwl
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
- output
