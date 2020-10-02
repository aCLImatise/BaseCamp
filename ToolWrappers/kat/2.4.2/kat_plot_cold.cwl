class: CommandLineTool
id: kat_plot_cold.cwl
inputs:
- id: in_output
  doc: The path to the output file.
  type: File
  inputBinding:
    prefix: --output
- id: in_output_type
  doc: "The plot file type to create (default is based on\ngiven output name)."
  type: File
  inputBinding:
    prefix: --output_type
- id: in_title
  doc: Title for plot
  type: string
  inputBinding:
    prefix: --title
- id: in_y_max
  doc: Maximum value for y-axis
  type: string
  inputBinding:
    prefix: --y_max
- id: in_width
  doc: Width of canvas
  type: string
  inputBinding:
    prefix: --width
- id: in_height
  doc: Height of canvas
  type: string
  inputBinding:
    prefix: --height
- id: in_dpi
  doc: Resolution in dots per inch of output graphic.
  type: string
  inputBinding:
    prefix: --dpi
- id: in_verbose
  doc: Print extra information
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The path to the output file.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_type
  doc: "The plot file type to create (default is based on\ngiven output name)."
  type: File
  outputBinding:
    glob: $(inputs.in_output_type)
cwlVersion: v1.1
baseCommand:
- kat_plot_cold
