class: CommandLineTool
id: module_enrichment.py_stats.cwl
inputs:
- id: in_modules
  doc: ''
  type: string?
  inputBinding:
    prefix: --modules
- id: in_correl_s
  doc: ''
  type: string?
  inputBinding:
    prefix: --correls
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- module_enrichment.py
- stats
