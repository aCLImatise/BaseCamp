class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/TaxonomicSummary.py.cwl
inputs:
- id: query_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: results_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: summary_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- TaxonomicSummary.py
