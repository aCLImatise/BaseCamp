class: CommandLineTool
id: transcov_plot_tensor_dist.cwl
inputs:
- id: in_input_tensor
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- transcov
- plot-tensor-dist
