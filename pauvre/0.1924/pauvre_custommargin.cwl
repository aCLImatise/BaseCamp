class: CommandLineTool
id: pauvre_custommargin.cwl
inputs:
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: dpi
  doc: Change the dpi from the default 600 if you need it higher
  type: string
  inputBinding:
    prefix: --dpi
- id: file_form
  doc: Which output format would you like? Def.=png
  type: string[]
  inputBinding:
    prefix: --fileform
- id: input_file
  doc: A tab-separated file with a header row of column names.
  type: string
  inputBinding:
    prefix: --input_file
- id: x_col
  doc: The column name of the data to plot on the x-axis
  type: string
  inputBinding:
    prefix: --xcol
- id: y_col
  doc: The column name of the data to plot on the y-axis
  type: string
  inputBinding:
    prefix: --ycol
- id: no_transparent
  doc: Specify this option if you don't want a transparent background. Default is
    on.
  type: boolean
  inputBinding:
    prefix: --no_transparent
- id: no_timestamp
  doc: Turn off time stamps in the filename output.
  type: boolean
  inputBinding:
    prefix: --no_timestamp
- id: output_base_name
  doc: Specify a base name for the output file(s). The input file base name is the
    default.
  type: string
  inputBinding:
    prefix: --output_base_name
- id: plot_max_y
  doc: Sets the maximum viewing area in the length dimension.
  type: string
  inputBinding:
    prefix: --plot_max_y
- id: plot_max_x
  doc: Sets the maximum viewing area in the quality dimension.
  type: string
  inputBinding:
    prefix: --plot_max_x
- id: plot_min_y
  doc: Sets the minimum viewing area in the length dimension. Default value = 0
  type: string
  inputBinding:
    prefix: --plot_min_y
- id: plot_min_x
  doc: Sets the minimum viewing area in the quality dimension. Default value = 0
  type: string
  inputBinding:
    prefix: --plot_min_x
- id: square
  doc: changes the hexmap into a square map quantized by ints.
  type: boolean
  inputBinding:
    prefix: --square
- id: title
  doc: This sets the title for the whole plot. Use --title "Crustacean's DNA read
    quality" if you need single quote or apostrophe inside title.
  type: string
  inputBinding:
    prefix: --title
- id: y_bin
  doc: This sets the bin size to use for length.
  type: string
  inputBinding:
    prefix: --ybin
- id: x_bin
  doc: This sets the bin size to use for quality
  type: string
  inputBinding:
    prefix: --xbin
- id: add_y_axes
  doc: Add Y-axes to both marginal histograms.
  type: boolean
  inputBinding:
    prefix: --add-yaxes
outputs: []
cwlVersion: v1.1
baseCommand:
- pauvre
- custommargin
