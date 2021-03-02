class: CommandLineTool
id: distribution_samples.py.cwl
inputs:
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
  doc: "Name of column in design file with Group/treatment\ninformation."
  type: File?
  inputBinding:
    prefix: --group
- id: in_order
  doc: Name of the column with the runOrder
  type: string?
  inputBinding:
    prefix: --order
- id: in_levels
  doc: Different groups tosort by separeted by commas.
  type: string?
  inputBinding:
    prefix: --levels
- id: in_figure
  doc: Path for the distribution figure
  type: File?
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
- id: in_paths
  doc: and outputs
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- distribution_samples.py
