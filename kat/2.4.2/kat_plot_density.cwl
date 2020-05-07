class: CommandLineTool
id: kat_plot_density.cwl
inputs:
- id: matrix_file
  doc: The input matrix file from KAT
  type: string
  inputBinding:
    position: 0
- id: not_raster_is_ed
  doc: Don't rasterise graphics (slower).
  type: boolean
  inputBinding:
    prefix: --not_rasterised
- id: dpi
  doc: Resolution in dots per inch of output graphic.
  type: string
  inputBinding:
    prefix: --dpi
- id: verbose
  doc: Print extra information
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- kat_plot_density
