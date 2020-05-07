class: CommandLineTool
id: distribution_features.py.cwl
inputs:
- id: f
  doc: '[-pal PALETTE] [-col COLOR]'
  type: string
  inputBinding:
    prefix: -f
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
  doc: Name of the column with uniqueID.
  type: string
  inputBinding:
    prefix: --ID
- id: group
  doc: Treatment group
  type: string
  inputBinding:
    prefix: --group
- id: figure
  doc: Output figure name [pdf].
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
- distribution_features.py
