class: CommandLineTool
id: principal_component_analysis.py.cwl
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
- id: levels
  doc: Different groups to sort by separeted by commas.
  type: string
  inputBinding:
    prefix: --levels
- id: load_out
  doc: Name of output file to store loadings. TSV format.
  type: string
  inputBinding:
    prefix: --load_out
- id: score_out
  doc: Name of output file to store scores. TSV format.
  type: string
  inputBinding:
    prefix: --score_out
- id: summary_out
  doc: Name of output file to store summaries of the components. TSV format.
  type: string
  inputBinding:
    prefix: --summary_out
- id: figure
  doc: Name of output file to storescatter plots for 3 principal components.
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
- principal_component_analysis.py
