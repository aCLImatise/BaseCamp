class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/plot_counts_correlation.py.cwl
inputs:
- id: report_pdf
  doc: Report PDF.
  type: string
  inputBinding:
    prefix: -r
- id: data_tags_tagtag
  doc: 'Data tags: tag1,tag2.'
  type: string
  inputBinding:
    prefix: -T
- id: merged_data_tsv
  doc: Merged data TSV.
  type: string
  inputBinding:
    prefix: -t
- id: correlation_tsv
  doc: Correlation TSV.
  type: string
  inputBinding:
    prefix: -o
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
outputs: []
cwlVersion: v1.1
baseCommand:
- plot_counts_correlation.py
