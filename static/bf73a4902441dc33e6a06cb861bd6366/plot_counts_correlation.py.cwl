class: CommandLineTool
id: plot_counts_correlation.py.cwl
inputs:
- id: in_report_pdf
  doc: Report PDF.
  type: string
  inputBinding:
    prefix: -r
- id: in_data_tags_tagtag
  doc: 'Data tags: tag1,tag2.'
  type: long
  inputBinding:
    prefix: -T
- id: in_merged_data_tsv
  doc: Merged data TSV.
  type: string
  inputBinding:
    prefix: -t
- id: in_correlation_tsv
  doc: Correlation TSV.
  type: string
  inputBinding:
    prefix: -o
- id: in_counts_one
  doc: Input tab separated file.
  type: string
  inputBinding:
    position: 0
- id: in_counts_two
  doc: Input tab separated file.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- plot_counts_correlation.py
