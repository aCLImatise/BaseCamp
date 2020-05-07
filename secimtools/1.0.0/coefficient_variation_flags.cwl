class: CommandLineTool
id: coefficient_variation_flags.py.cwl
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
  doc: Name of column in design file with Group/treatment information.
  type: string
  inputBinding:
    prefix: --group
- id: levels
  doc: Different groups tosort by separeted by commas.
  type: string
  inputBinding:
    prefix: --levels
- id: cv_cut_off
  doc: The default CV cutoff will flag 10 percent of the rowIDs with larger CVs. If
    you want to set a CV cutoff, put the number here. [optional]
  type: string
  inputBinding:
    prefix: --CVcutoff
- id: figure
  doc: Name of the output PDF for CV plots.
  type: string
  inputBinding:
    prefix: --figure
- id: flag
  doc: Name of the output TSV for CV flags.
  type: string
  inputBinding:
    prefix: --flag
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
- coefficient_variation_flags.py
