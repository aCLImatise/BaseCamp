class: CommandLineTool
id: scree_plot_pyseer.cwl
inputs:
- id: in_max_dimensions
  doc: 'Maximum dimensions to plot [Default: 30]'
  type: long
  inputBinding:
    prefix: --max-dimensions
- id: in_output
  doc: 'Plot filename [Default: scree_plot.png]'
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scree_plot_pyseer
