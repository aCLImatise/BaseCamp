class: CommandLineTool
id: plot_counts_correlation.py.cwl
inputs:
- id: counts_one
  doc: Input tab separated file.
  type: string
  inputBinding:
    position: 0
- id: counts_two
  doc: Input tab separated file.
  type: string
  inputBinding:
    position: 1
- id: r
  doc: Report PDF.
  type: string
  inputBinding:
    prefix: -r
- id: t
  doc: 'Data tags: tag1,tag2.'
  type: string
  inputBinding:
    prefix: -T
- id: t
  doc: Merged data TSV.
  type: string
  inputBinding:
    prefix: -t
- id: o
  doc: Correlation TSV.
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- plot_counts_correlation.py
