class: CommandLineTool
id: scatter_plot_3D.py.cwl
inputs:
- id: in_var_0
  doc: '[-f FIGURE] [-pal PALETTE] [-col COLOR]'
  type: string?
  inputBinding:
    prefix: -y
- id: in_input
  doc: Input dataset in wide format.
  type: string?
  inputBinding:
    prefix: --input
- id: in_design
  doc: Design file.
  type: File?
  inputBinding:
    prefix: --design
- id: in_id
  doc: Name of the column with unique identifiers.
  type: string?
  inputBinding:
    prefix: --ID
- id: in_group
  doc: Name of the column with groups.
  type: string?
  inputBinding:
    prefix: --group
- id: in_name_column_x
  doc: Name of column for X values
  type: string?
  inputBinding:
    prefix: --X
- id: in_name_column_y
  doc: Name of column for Y values
  type: string?
  inputBinding:
    prefix: --Y
- id: in_name_column_z
  doc: Name of column for Z values
  type: string?
  inputBinding:
    prefix: --Z
- id: in_figure
  doc: Path of figure.
  type: File?
  inputBinding:
    prefix: --figure
- id: in_palette
  doc: Name of the palette to use.
  type: string?
  inputBinding:
    prefix: --palette
- id: in_color
  doc: Name of a valid color scheme on the selected palette
  type: string?
  inputBinding:
    prefix: --color
- id: in_rotation
  doc: camera viewing rotation
  type: string?
  inputBinding:
    prefix: --rotation
- id: in_elevation
  doc: "Camera vieweing elevation\n"
  type: string?
  inputBinding:
    prefix: --elevation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- scatter_plot_3D.py
