class: CommandLineTool
id: distribution_samples.py.cwl
inputs:
- id: paths
  doc: and outputs
  type: File
  inputBinding:
    position: 0
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
  doc: Name of column in design file with Group/treatment information.
  type: string
  inputBinding:
    prefix: --group
- id: order
  doc: Name of the column with the runOrder
  type: string
  inputBinding:
    prefix: --order
- id: levels
  doc: Different groups tosort by separeted by commas.
  type: string
  inputBinding:
    prefix: --levels
- id: figure
  doc: Path for the distribution figure
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
- distribution_samples.py
