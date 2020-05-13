class: CommandLineTool
id: rsem_plot_model_sample_name.cwl
inputs:
- id: output_plot_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-plot-model
- sample_name
