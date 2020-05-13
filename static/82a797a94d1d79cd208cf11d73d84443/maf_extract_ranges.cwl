class: CommandLineTool
id: maf_extract_ranges.py.cwl
inputs:
- id: min_cols
  doc: '=10: Minimum length (columns) required for alignment to be output'
  type: boolean
  inputBinding:
    prefix: --mincols
outputs: []
cwlVersion: v1.1
baseCommand:
- maf_extract_ranges.py
