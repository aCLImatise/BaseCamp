class: CommandLineTool
id: ../../../module_enrichment.py_stats.cwl
inputs:
- id: correl_s
  doc: ''
  type: string
  inputBinding:
    prefix: --correls
- id: modules
  doc: ''
  type: string
  inputBinding:
    prefix: --modules
outputs: []
cwlVersion: v1.1
baseCommand:
- module_enrichment.py
- stats
