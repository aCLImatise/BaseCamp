class: CommandLineTool
id: sketchy_utils_plot_kraken.cwl
inputs:
- id: report
  doc: Path or file glob to tax report files
  type: string
  inputBinding:
    prefix: --report
- id: prefix
  doc: Output prefix for plot file.
  type: string
  inputBinding:
    prefix: --prefix
- id: level
  doc: 'Taxonomic level to assess: species [S]'
  type: string
  inputBinding:
    prefix: --level
- id: top
  doc: Show top taxonomic levels in plots [10]
  type: long
  inputBinding:
    prefix: --top
- id: color
  doc: Color palette for central donut plot.
  type: string
  inputBinding:
    prefix: --color
- id: title
  doc: Row titles for center plot, comma separated string.
  type: string
  inputBinding:
    prefix: --title
- id: sub
  doc: Add subplot titles for each column.
  type: boolean
  inputBinding:
    prefix: --sub
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- utils
- plot-kraken
