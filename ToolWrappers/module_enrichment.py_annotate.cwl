class: CommandLineTool
id: module_enrichment.py_annotate.cwl
inputs:
- id: in_tree
  doc: ''
  type: string
  inputBinding:
    prefix: --tree
- id: in_correl_s
  doc: ''
  type: string
  inputBinding:
    prefix: --correls
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- module_enrichment.py
- annotate
