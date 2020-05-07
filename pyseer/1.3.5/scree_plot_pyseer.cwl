class: CommandLineTool
id: scree_plot_pyseer.cwl
inputs:
- id: distances
  doc: Strains distance square matrix
  type: string
  inputBinding:
    position: 0
- id: max_dimensions
  doc: 'Maximum dimensions to plot [Default: 30]'
  type: long
  inputBinding:
    prefix: --max-dimensions
- id: output
  doc: 'Plot filename [Default: scree_plot.png]'
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- scree_plot_pyseer
