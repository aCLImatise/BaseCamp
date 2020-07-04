class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mb_plot_heatmap_small_parclip.cwl
inputs:
- id: downstream
  doc: ''
  type: string
  inputBinding:
    prefix: --downstream
- id: mb_plot_heat_map_small
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-plot-heatmap-small
- parclip
