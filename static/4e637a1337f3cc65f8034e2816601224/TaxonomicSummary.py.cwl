class: CommandLineTool
id: TaxonomicSummary.py.cwl
inputs:
- id: in_query_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_results_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_summary_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- TaxonomicSummary.py
