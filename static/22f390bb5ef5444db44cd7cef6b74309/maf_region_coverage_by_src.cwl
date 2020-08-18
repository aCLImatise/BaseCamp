class: CommandLineTool
id: ../../../maf_region_coverage_by_src.py.cwl
inputs:
- id: src
  doc: Use this src for all intervals
  type: string
  inputBinding:
    prefix: --src
- id: prefix
  doc: Prepend this to each src before lookup
  type: string
  inputBinding:
    prefix: --prefix
- id: maf_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- maf_region_coverage_by_src.py
