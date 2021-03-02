class: CommandLineTool
id: hicPlotAverageRegions.cwl
inputs:
- id: in_matrix
  doc: "The averaged regions file computed by\nhicAverageRegions (npz file)."
  type: File?
  inputBinding:
    prefix: --matrix
- id: in_output_file
  doc: The averaged regions plot.
  type: File?
  inputBinding:
    prefix: --outputFile
- id: in_logo_nep
  doc: Plot log1p of the matrix values.
  type: boolean?
  inputBinding:
    prefix: --log1p
- id: in_log
  doc: Plot log of the matrix values.
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_colormap
  doc: "Color map to use for the heatmap. Available values can\nbe seen here: http://matplotlib.org/examples/color/col\n\
    ormaps_reference.html"
  type: string?
  inputBinding:
    prefix: --colorMap
- id: in_vmin
  doc: Minimum score value.
  type: string?
  inputBinding:
    prefix: --vMin
- id: in_vmax
  doc: Maximum score value.
  type: string?
  inputBinding:
    prefix: --vMax
- id: in_dpi
  doc: "Resolution of image ifouput is a raster graphics image\n(e.g png, jpg)."
  type: string?
  inputBinding:
    prefix: --dpi
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: The averaged regions plot.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- hicPlotAverageRegions
