class: CommandLineTool
id: ../../../module_enrichment.py_stats.cwl
inputs:
- id: in_correl_s
  doc: ''
  type: string
  inputBinding:
    prefix: --correls
- id: in_modules
  doc: ''
  type: string
  inputBinding:
    prefix: --modules
- id: in_perms
  doc: ''
  type: string
  inputBinding:
    prefix: --perms
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
- stats
