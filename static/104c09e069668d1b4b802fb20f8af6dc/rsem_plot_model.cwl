class: CommandLineTool
id: ../../../rsem_plot_model.cwl
inputs:
- id: sample_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_plot_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-plot-model
