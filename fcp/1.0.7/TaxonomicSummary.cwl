class: CommandLineTool
id: TaxonomicSummary.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: taxonomic_summary_py
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: query_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: results_file
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: summary_file
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- TaxonomicSummary.py
