class: CommandLineTool
id: transcov_plot_tensor_dist.cwl
inputs:
- id: in_output_file
  doc: "--help                  Show this message and exit.\n"
  type: File
  inputBinding:
    prefix: --output-file
- id: in_input_tensor
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "--help                  Show this message and exit.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- transcov
- plot-tensor-dist
