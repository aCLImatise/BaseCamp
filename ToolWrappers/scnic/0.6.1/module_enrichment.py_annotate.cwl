class: CommandLineTool
id: ../../../module_enrichment.py_annotate.cwl
inputs:
- id: in_correl_s
  doc: ''
  type: string
  inputBinding:
    prefix: --correls
- id: in_tree
  doc: ''
  type: string
  inputBinding:
    prefix: --tree
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    prefix: --genome
- id: in_modules
  doc: ''
  type: string
  inputBinding:
    prefix: --modules
- id: in_output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: in_skip_kos
  doc: ''
  type: boolean
  inputBinding:
    prefix: --skip_kos
- id: in_to_keep
  doc: ''
  type: string
  inputBinding:
    prefix: --to_keep
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- module_enrichment.py
- annotate
