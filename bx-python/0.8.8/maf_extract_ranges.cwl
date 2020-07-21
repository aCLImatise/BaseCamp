class: CommandLineTool
id: ../../../maf_extract_ranges.py.cwl
inputs:
- id: min_cols
  doc: Minimum length (columns) required for alignment to be output
  type: long
  inputBinding:
    prefix: --mincols
- id: interval_file
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: ref_index
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- maf_extract_ranges.py
