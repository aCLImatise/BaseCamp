class: CommandLineTool
id: rsem_plot_model.cwl
inputs:
- id: in_sample_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_plot_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rsem-plot-model
