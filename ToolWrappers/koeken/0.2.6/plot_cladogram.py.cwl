class: CommandLineTool
id: plot_cladogram.py.cwl
inputs:
- id: in_siblings_connector_width
  doc: set the color of the background
  type: string?
  inputBinding:
    prefix: --siblings_connector_width
- id: in_colored_labels
  doc: draw the label with class color (1) or in black (0)
  type: string?
  inputBinding:
    prefix: --colored_labels
- id: in_class_legend_font_size
  doc: the format for the output file
  type: File?
  inputBinding:
    prefix: --class_legend_font_size
- id: in_input_file
  doc: tab delimited input file
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: the file for the output image
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_class_legend_font_size
  doc: the format for the output file
  type: File?
  outputBinding:
    glob: $(inputs.in_class_legend_font_size)
hints: []
cwlVersion: v1.1
baseCommand:
- plot_cladogram.py
