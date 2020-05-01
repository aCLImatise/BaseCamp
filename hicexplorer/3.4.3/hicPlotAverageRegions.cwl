#!/usr/bin/env cwl-runner

baseCommand:
- hicPlotAverageRegions
class: CommandLineTool
cwlVersion: v1.0
id: hicplotaverageregions
inputs:
- doc: The averaged regions file computed by hicAverageRegions (npz file).
  id: matrix
  inputBinding:
    prefix: --matrix
  type: string
- doc: The averaged regions plot.
  id: output_file
  inputBinding:
    prefix: --outputFile
  type: string
- doc: Plot log1p of the matrix values.
  id: log1p
  inputBinding:
    prefix: --log1p
  type: boolean
- doc: Plot log of the matrix values.
  id: log
  inputBinding:
    prefix: --log
  type: boolean
- doc: 'Color map to use for the heatmap. Available values can be seen here: http://matplotlib.org/examples/color/col
    ormaps_reference.html'
  id: colormap
  inputBinding:
    prefix: --colorMap
  type: string
- doc: Minimum score value.
  id: vmin
  inputBinding:
    prefix: --vMin
  type: string
- doc: Maximum score value.
  id: vmax
  inputBinding:
    prefix: --vMax
  type: string
- doc: Resolution of image ifouput is a raster graphics image (e.g png, jpg).
  id: dpi
  inputBinding:
    prefix: --dpi
  type: string
