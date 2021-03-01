class: CommandLineTool
id: distribution_features.py.cwl
inputs:
- id: in_f
  doc: '[-pal PALETTE] [-col COLOR]'
  type: string?
  inputBinding:
    prefix: -f
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
  doc: Name of the column with uniqueID.
  type: string?
  inputBinding:
    prefix: --ID
- id: in_group
  doc: Treatment group
  type: string?
  inputBinding:
    prefix: --group
- id: in_figure
  doc: Output figure name [pdf].
  type: string?
  inputBinding:
    prefix: --figure
- id: in_palette
  doc: Name of the palette to use.
  type: string?
  inputBinding:
    prefix: --palette
- id: in_color
  doc: "Name of a valid color scheme on the selected palette\n"
  type: string?
  inputBinding:
    prefix: --color
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- distribution_features.py
