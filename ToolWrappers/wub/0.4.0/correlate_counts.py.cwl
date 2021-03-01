class: CommandLineTool
id: correlate_counts.py.cwl
inputs:
- id: in_report_pdf_bammultiqcpdf
  doc: Report PDF (bam_multi_qc.pdf).
  type: string?
  inputBinding:
    prefix: -r
- id: in_correlation_statistic_spearman
  doc: Correlation statistic - spearman or pearson (spearman).
  type: string?
  inputBinding:
    prefix: -c
- id: in_log_transform_data
  doc: Log transform data.
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_omit_lower_diagonal
  doc: Omit lower diagonal.
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_input_counts
  doc: Input counts as tab separated files.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- correlate_counts.py
