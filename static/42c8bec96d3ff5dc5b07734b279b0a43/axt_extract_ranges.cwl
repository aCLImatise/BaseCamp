class: CommandLineTool
id: axt_extract_ranges.py.cwl
inputs:
- id: min_cols
  doc: '=10: Minimum length (columns) required for alignment to be output'
  type: boolean
  inputBinding:
    prefix: --mincols
outputs: []
cwlVersion: v1.1
baseCommand:
- axt_extract_ranges.py
