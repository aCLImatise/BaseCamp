class: CommandLineTool
id: scatter_plot_3D.py.cwl
inputs:
- id: input
  doc: Input dataset in wide format.
  type: string
  inputBinding:
    prefix: --input
- id: design
  doc: Design file.
  type: string
  inputBinding:
    prefix: --design
- id: id
  doc: Name of the column with unique identifiers.
  type: string
  inputBinding:
    prefix: --ID
- id: group
  doc: Name of the column with groups.
  type: string
  inputBinding:
    prefix: --group
- id: x
  doc: Name of column for X values
  type: string
  inputBinding:
    prefix: --X
- id: y
  doc: Name of column for Y values
  type: string
  inputBinding:
    prefix: --Y
- id: z
  doc: Name of column for Z values
  type: string
  inputBinding:
    prefix: --Z
- id: figure
  doc: Path of figure.
  type: string
  inputBinding:
    prefix: --figure
- id: palette
  doc: Name of the palette to use.
  type: string
  inputBinding:
    prefix: --palette
- id: color
  doc: Name of a valid color scheme on the selected palette
  type: string
  inputBinding:
    prefix: --color
- id: rotation
  doc: camera viewing rotation
  type: string
  inputBinding:
    prefix: --rotation
- id: elevation
  doc: Camera vieweing elevation
  type: string
  inputBinding:
    prefix: --elevation
outputs: []
cwlVersion: v1.1
baseCommand:
- scatter_plot_3D.py
