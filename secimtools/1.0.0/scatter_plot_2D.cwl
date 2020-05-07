class: CommandLineTool
id: scatter_plot_2D.py.cwl
inputs:
- id: y
  doc: '[-f FIGURE] [-pal PALETTE] [-col COLOR]'
  type: string
  inputBinding:
    prefix: -y
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
outputs: []
cwlVersion: v1.1
baseCommand:
- scatter_plot_2D.py
