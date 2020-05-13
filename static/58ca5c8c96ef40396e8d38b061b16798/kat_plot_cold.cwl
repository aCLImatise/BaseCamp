class: CommandLineTool
id: kat_plot_cold.cwl
inputs:
- id: stats_file
  doc: The stats file produced by 'kat cold'
  type: string
  inputBinding:
    position: 0
- id: output
  doc: The path to the output file.
  type: string
  inputBinding:
    prefix: --output
- id: output_type
  doc: The plot file type to create (default is based on given output name).
  type: string
  inputBinding:
    prefix: --output_type
- id: title
  doc: Title for plot
  type: string
  inputBinding:
    prefix: --title
- id: y_max
  doc: Maximum value for y-axis
  type: string
  inputBinding:
    prefix: --y_max
- id: width
  doc: Width of canvas
  type: string
  inputBinding:
    prefix: --width
- id: height
  doc: Height of canvas
  type: string
  inputBinding:
    prefix: --height
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
- kat_plot_cold
