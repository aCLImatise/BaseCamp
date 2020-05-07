class: CommandLineTool
id: hicPlotAverageRegions.cwl
inputs:
- id: matrix
  doc: The averaged regions file computed by hicAverageRegions (npz file).
  type: string
  inputBinding:
    prefix: --matrix
- id: output_file
  doc: The averaged regions plot.
  type: string
  inputBinding:
    prefix: --outputFile
- id: log1p
  doc: Plot log1p of the matrix values.
  type: boolean
  inputBinding:
    prefix: --log1p
- id: log
  doc: Plot log of the matrix values.
  type: boolean
  inputBinding:
    prefix: --log
- id: colormap
  doc: 'Color map to use for the heatmap. Available values can be seen here: http://matplotlib.org/examples/color/col
    ormaps_reference.html'
  type: string
  inputBinding:
    prefix: --colorMap
- id: vmin
  doc: Minimum score value.
  type: string
  inputBinding:
    prefix: --vMin
- id: vmax
  doc: Maximum score value.
  type: string
  inputBinding:
    prefix: --vMax
- id: dpi
  doc: Resolution of image ifouput is a raster graphics image (e.g png, jpg).
  type: string
  inputBinding:
    prefix: --dpi
outputs: []
cwlVersion: v1.1
baseCommand:
- hicPlotAverageRegions
