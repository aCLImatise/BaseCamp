class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/correlate_counts.py.cwl
inputs:
- id: report_pdf_bammultiqcpdf
  doc: Report PDF (bam_multi_qc.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: correlation_statistic_spearman
  doc: Correlation statistic - spearman or pearson (spearman).
  type: string
  inputBinding:
    prefix: -c
- id: log_transform_data
  doc: Log transform data.
  type: boolean
  inputBinding:
    prefix: -L
- id: omit_lower_diagonal
  doc: Omit lower diagonal.
  type: boolean
  inputBinding:
    prefix: -o
- id: input_counts
  doc: Input counts as tab separated files.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- correlate_counts.py
