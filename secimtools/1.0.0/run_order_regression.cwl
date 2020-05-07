class: CommandLineTool
id: run_order_regression.py.cwl
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
  doc: Group/treatment identifier in design file [Optional].
  type: string
  inputBinding:
    prefix: --group
- id: order
  doc: Name of the column on design file that contains run order
  type: string
  inputBinding:
    prefix: --order
- id: levels
  doc: Different groups to sort by separeted by commas.
  type: string
  inputBinding:
    prefix: --levels
- id: fig
  doc: Name of PDF to save scatter plots.
  type: string
  inputBinding:
    prefix: --fig
- id: table
  doc: Name of table for scatter plots
  type: string
  inputBinding:
    prefix: --table
- id: flags
  doc: Name of table flags
  type: string
  inputBinding:
    prefix: --flags
- id: debug
  doc: Add debugging log output.
  type: boolean
  inputBinding:
    prefix: --debug
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
- run_order_regression.py
