class: CommandLineTool
id: correlate_counts.py.cwl
inputs:
- id: input_counts
  doc: Input counts as tab separated files.
  type: string
  inputBinding:
    position: 0
- id: r
  doc: Report PDF (bam_multi_qc.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: c
  doc: Correlation statistic - spearman or pearson (spearman).
  type: string
  inputBinding:
    prefix: -c
- id: l
  doc: Log transform data.
  type: boolean
  inputBinding:
    prefix: -L
- id: o
  doc: Omit lower diagonal.
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- correlate_counts.py
