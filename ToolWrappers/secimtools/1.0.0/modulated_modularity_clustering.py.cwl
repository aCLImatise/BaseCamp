class: CommandLineTool
id: modulated_modularity_clustering.py.cwl
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
  doc: Nam of the column with unique identifiers.
  type: string?
  inputBinding:
    prefix: --ID
- id: in_correlation
  doc: "Compute correlation coefficients using either\n'pearson' (standard correlation\
    \ coefficient),\n'kendall' (Kendall Tau correlation coefficient), or\n'spearman'\
    \ (Spearman rank correlation)."
  type: string?
  inputBinding:
    prefix: --correlation
- id: in_sigma_low
  doc: 'Low value of sigma (Default: 0.05).'
  type: double?
  inputBinding:
    prefix: --sigmaLow
- id: in_sigma_high
  doc: 'High value of sigma (Default: 0.50).'
  type: double?
  inputBinding:
    prefix: --sigmaHigh
- id: in_sigma_num
  doc: 'Number of values of sigma to search (Default: 451).'
  type: long?
  inputBinding:
    prefix: --sigmaNum
- id: in_figure
  doc: MMC Heatmaps
  type: string?
  inputBinding:
    prefix: --figure
- id: in_out
  doc: Output TSV name
  type: string?
  inputBinding:
    prefix: --out
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
- modulated_modularity_clustering.py
