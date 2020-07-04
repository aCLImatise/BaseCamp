class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/kat_plot_density.cwl
inputs:
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
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: matrix_file
  doc: The input matrix file from KAT
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- kat_plot_density
