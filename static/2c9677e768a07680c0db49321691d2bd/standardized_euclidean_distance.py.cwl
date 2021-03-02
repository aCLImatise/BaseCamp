class: CommandLineTool
id: standardized_euclidean_distance.py.cwl
inputs:
- id: in_input
  doc: Dataset in Wide format
  type: string?
  inputBinding:
    prefix: --input
- id: in_design
  doc: Design file
  type: File?
  inputBinding:
    prefix: --design
- id: in_id
  doc: Name of the column with unique identifiers.
  type: string?
  inputBinding:
    prefix: --ID
- id: in_group
  doc: Treatment group
  type: string?
  inputBinding:
    prefix: --group
- id: in_order
  doc: Run Order
  type: string?
  inputBinding:
    prefix: --order
- id: in_levels
  doc: Different groups to sort by separeted by comas.
  type: string?
  inputBinding:
    prefix: --levels
- id: in_figure
  doc: PDF Output of standardized Euclidean distance plot
  type: string?
  inputBinding:
    prefix: --figure
- id: in_sed_to_mean
  doc: "TSV Output of standardized Euclidean distances from\nsamples to the mean."
  type: string?
  inputBinding:
    prefix: --SEDtoMean
- id: in_sed_pairwise
  doc: "TSV Output of sample-pairwise standardized Euclidean\ndistances."
  type: string?
  inputBinding:
    prefix: --SEDpairwise
- id: in_per
  doc: "The threshold for standard distributions. The default\nis 0.95."
  type: double?
  inputBinding:
    prefix: --per
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
- standardized_euclidean_distance.py
