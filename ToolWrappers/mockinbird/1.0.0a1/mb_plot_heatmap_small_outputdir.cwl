class: CommandLineTool
id: mb_plot_heatmap_small_outputdir.cwl
inputs:
- id: in_downstream
  doc: ''
  type: string?
  inputBinding:
    prefix: --downstream
- id: in_mb_plot_heat_map_small
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
- mb-plot-heatmap-small
- outputdir
