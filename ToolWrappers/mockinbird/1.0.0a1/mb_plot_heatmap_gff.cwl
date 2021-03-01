class: CommandLineTool
id: mb_plot_heatmap_gff.cwl
inputs:
- id: in_upstream
  doc: ''
  type: string?
  inputBinding:
    prefix: --upstream
- id: in_downstream
  doc: ''
  type: string?
  inputBinding:
    prefix: --downstream
- id: in_mb_plot_heat_map
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
- mb-plot-heatmap
- gff
