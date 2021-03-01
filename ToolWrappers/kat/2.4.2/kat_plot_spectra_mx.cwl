class: CommandLineTool
id: kat_plot_spectra_mx.cwl
inputs:
- id: in_output
  doc: The path to the output file.
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_type
  doc: "The plot file type to create (default is based on\ngiven output name)."
  type: File?
  inputBinding:
    prefix: --output_type
- id: in_title
  doc: Title for plot
  type: string?
  inputBinding:
    prefix: --title
- id: in_x_label
  doc: Label for x-axis
  type: string?
  inputBinding:
    prefix: --x_label
- id: in_y_label
  doc: Label for y-axis
  type: string?
  inputBinding:
    prefix: --y_label
- id: in_x_min
  doc: Minimum value for x-axis
  type: string?
  inputBinding:
    prefix: --x_min
- id: in_y_min
  doc: Minimum value for y-axis
  type: string?
  inputBinding:
    prefix: --y_min
- id: in_x_max
  doc: Maximum value for x-axis
  type: string?
  inputBinding:
    prefix: --x_max
- id: in_y_max
  doc: Maximum value for y-axis
  type: string?
  inputBinding:
    prefix: --y_max
- id: in_width
  doc: Width of canvas
  type: string?
  inputBinding:
    prefix: --width
- id: in_height
  doc: Height of canvas
  type: string?
  inputBinding:
    prefix: --height
- id: in_intersection
  doc: "Activate intersection mode, which plots the shared and\nexclusive content\
    \ found in the matrix."
  type: boolean?
  inputBinding:
    prefix: --intersection
- id: in_list
  doc: "The list of columns or rows to select from the matrix\n(overrides -i)"
  type: string?
  inputBinding:
    prefix: --list
- id: in_exc_cut_off_done
  doc: "If in intersection mode, the level at which content\nfor dataset 1 is considered\
    \ exclusive or shared"
  type: long?
  inputBinding:
    prefix: --exc_cutoff_d1
- id: in_exc_cut_off_d_two
  doc: "If in intersection mode, the level at which content\nfor dataset 2 is considered\
    \ exclusive or shared"
  type: long?
  inputBinding:
    prefix: --exc_cutoff_d2
- id: in_x_log_scale
  doc: X-axis is logscale. Overrides x_min and x_max
  type: boolean?
  inputBinding:
    prefix: --x_logscale
- id: in_y_log_scale
  doc: Y-axis is logscale. Overrides y_min and y_max
  type: boolean?
  inputBinding:
    prefix: --y_logscale
- id: in_dpi
  doc: Resolution in dots per inch of output graphic.
  type: string?
  inputBinding:
    prefix: --dpi
- id: in_verbose
  doc: Print extra information
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The path to the output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_type
  doc: "The plot file type to create (default is based on\ngiven output name)."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_type)
hints: []
cwlVersion: v1.1
baseCommand:
- kat_plot_spectra_mx
