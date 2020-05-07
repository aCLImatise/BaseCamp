class: CommandLineTool
id: taxa_coverage.py.cwl
inputs:
- id: hits_fps
  doc: Target primer hits files to generate linkers against. Separate multiple files
    with a colon. [REQUIRED]
  type: string
  inputBinding:
    prefix: --hits_fps
- id: tax_a_fp
  doc: Taxonomy mapping file. [REQUIRED]
  type: string
  inputBinding:
    prefix: --taxa_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- taxa_coverage.py
