class: CommandLineTool
id: ../../../mb_plot_heatmap_prefix.cwl
inputs:
- id: downstream
  doc: ''
  type: string
  inputBinding:
    prefix: --downstream
- id: upstream
  doc: ''
  type: string
  inputBinding:
    prefix: --upstream
- id: mb_plot_heat_map
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-plot-heatmap
- prefix
