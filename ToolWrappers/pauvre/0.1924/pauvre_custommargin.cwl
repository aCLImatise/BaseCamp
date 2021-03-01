class: CommandLineTool
id: pauvre_custommargin.cwl
inputs:
- id: in_quiet
  doc: Do not output warnings to stderr
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_dpi
  doc: Change the dpi from the default 600 if you need it
  type: long?
  inputBinding:
    prefix: --dpi
- id: in_input_file
  doc: "A tab-separated file with a header row of column\nnames."
  type: File?
  inputBinding:
    prefix: --input_file
- id: in_x_col
  doc: The column name of the data to plot on the x-axis
  type: string?
  inputBinding:
    prefix: --xcol
- id: in_y_col
  doc: The column name of the data to plot on the y-axis
  type: string?
  inputBinding:
    prefix: --ycol
- id: in_no_transparent
  doc: "Specify this option if you don't want a transparent\nbackground. Default is\
    \ on."
  type: boolean?
  inputBinding:
    prefix: --no_transparent
- id: in_no_timestamp
  doc: Turn off time stamps in the filename output.
  type: File?
  inputBinding:
    prefix: --no_timestamp
- id: in_output_base_name
  doc: "Specify a base name for the output file(s). The input\nfile base name is the\
    \ default."
  type: File?
  inputBinding:
    prefix: --output_base_name
- id: in_plot_max_y
  doc: Sets the maximum viewing area in the length dimension.
  type: long?
  inputBinding:
    prefix: --plot_max_y
- id: in_plot_max_x
  doc: "Sets the maximum viewing area in the quality\ndimension."
  type: string?
  inputBinding:
    prefix: --plot_max_x
- id: in_plot_min_y
  doc: "Sets the minimum viewing area in the length dimension.\nDefault value = 0"
  type: long?
  inputBinding:
    prefix: --plot_min_y
- id: in_plot_min_x
  doc: "Sets the minimum viewing area in the quality\ndimension. Default value = 0"
  type: long?
  inputBinding:
    prefix: --plot_min_x
- id: in_square
  doc: changes the hexmap into a square map quantized by
  type: boolean?
  inputBinding:
    prefix: --square
- id: in_y_bin
  doc: This sets the bin size to use for length.
  type: long?
  inputBinding:
    prefix: --ybin
- id: in_x_bin
  doc: This sets the bin size to use for quality
  type: long?
  inputBinding:
    prefix: --xbin
- id: in_add_y_axes
  doc: Add Y-axes to both marginal histograms.
  type: boolean?
  inputBinding:
    prefix: --add-yaxes
- id: in_higher
  doc: --fileform STRING [STRING ...]
  type: string
  inputBinding:
    position: 0
- id: in_ints_dot
  doc: -t TITLE, --title TITLE
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_no_timestamp
  doc: Turn off time stamps in the filename output.
  type: File?
  outputBinding:
    glob: $(inputs.in_no_timestamp)
hints: []
cwlVersion: v1.1
baseCommand:
- pauvre
- custommargin
