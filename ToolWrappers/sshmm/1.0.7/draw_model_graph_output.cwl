class: CommandLineTool
id: draw_model_graph_output.cwl
inputs:
- id: in_draw_model_graph
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_model
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sequence_number
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- draw_model_graph
- output
