class: CommandLineTool
id: ../../../mb_plot_heatmap_small.cwl
inputs:
- id: in_downstream
  doc: set downstream range
  type: string
  inputBinding:
    prefix: --downstream
- id: in_upstream
  doc: set upstream range
  type: string
  inputBinding:
    prefix: --upstream
- id: in_min
  doc: minium transcript size
  type: long
  inputBinding:
    prefix: --min
- id: in_max
  doc: maximum transcript size
  type: long
  inputBinding:
    prefix: --max
- id: in_x_bins
  doc: number of bins in x direction
  type: long
  inputBinding:
    prefix: --xbins
- id: in_y_bins
  doc: number of bins in y direction
  type: long
  inputBinding:
    prefix: --ybins
- id: in_xp_x
  doc: width of final plot in px
  type: string
  inputBinding:
    prefix: --xpx
- id: in_yp_x
  doc: height of final plot in px
  type: string
  inputBinding:
    prefix: --ypx
- id: in_remove
  doc: remove temporary text files
  type: boolean
  inputBinding:
    prefix: --remove
- id: in_verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-plot-heatmap-small
