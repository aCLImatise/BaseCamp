class: CommandLineTool
id: sketchy_utils_plot_kraken.cwl
inputs:
- id: in_report
  doc: Path or file glob to tax report files
  type: File
  inputBinding:
    prefix: --report
- id: in_prefix
  doc: Output prefix for plot file.
  type: File
  inputBinding:
    prefix: --prefix
- id: in_level
  doc: 'Taxonomic level to assess: species [S]'
  type: string
  inputBinding:
    prefix: --level
- id: in_top
  doc: Show top taxonomic levels in plots [10]
  type: long
  inputBinding:
    prefix: --top
- id: in_color
  doc: Color palette for central donut plot.
  type: string
  inputBinding:
    prefix: --color
- id: in_title
  doc: Row titles for center plot, comma separated string.
  type: string
  inputBinding:
    prefix: --title
- id: in_sub
  doc: Add subplot titles for each column.
  type: boolean
  inputBinding:
    prefix: --sub
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: Output prefix for plot file.
  type: File
  outputBinding:
    glob: $(inputs.in_prefix)
cwlVersion: v1.1
baseCommand:
- sketchy
- utils
- plot-kraken
