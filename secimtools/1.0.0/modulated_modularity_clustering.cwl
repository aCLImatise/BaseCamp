class: CommandLineTool
id: modulated_modularity_clustering.py.cwl
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
  doc: Nam of the column with unique identifiers.
  type: string
  inputBinding:
    prefix: --ID
- id: correlation
  doc: Compute correlation coefficients using either 'pearson' (standard correlation
    coefficient), 'kendall' (Kendall Tau correlation coefficient), or 'spearman' (Spearman
    rank correlation).
  type: string
  inputBinding:
    prefix: --correlation
- id: sigma_low
  doc: 'Low value of sigma (Default: 0.05).'
  type: string
  inputBinding:
    prefix: --sigmaLow
- id: sigma_high
  doc: 'High value of sigma (Default: 0.50).'
  type: string
  inputBinding:
    prefix: --sigmaHigh
- id: sigma_num
  doc: 'Number of values of sigma to search (Default: 451).'
  type: string
  inputBinding:
    prefix: --sigmaNum
- id: figure
  doc: MMC Heatmaps
  type: string
  inputBinding:
    prefix: --figure
- id: out
  doc: Output TSV name
  type: string
  inputBinding:
    prefix: --out
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
- modulated_modularity_clustering.py
