class: CommandLineTool
id: ../../../mb_plot_heatmap.cwl
inputs:
- id: downstream
  doc: set downstream range
  type: string
  inputBinding:
    prefix: --downstream
- id: upstream
  doc: set upstream range
  type: string
  inputBinding:
    prefix: --upstream
- id: min
  doc: minimum transcript size
  type: long
  inputBinding:
    prefix: --min
- id: max
  doc: maximum transcript size
  type: long
  inputBinding:
    prefix: --max
- id: x_bins
  doc: number of bins in x direction
  type: string
  inputBinding:
    prefix: --xbins
- id: y_bins
  doc: number of bins in y direction
  type: string
  inputBinding:
    prefix: --ybins
- id: xp_x
  doc: width of final plot in px
  type: string
  inputBinding:
    prefix: --xpx
- id: yp_x
  doc: height of final plot in px
  type: string
  inputBinding:
    prefix: --ypx
- id: remove
  doc: remove temporary text files
  type: boolean
  inputBinding:
    prefix: --remove
- id: verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-plot-heatmap
