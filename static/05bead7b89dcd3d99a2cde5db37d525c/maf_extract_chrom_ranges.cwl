class: CommandLineTool
id: maf_extract_chrom_ranges.py.cwl
inputs:
- id: min_cols
  doc: '=10: Minimum length (columns) required for alignment to be output'
  type: boolean
  inputBinding:
    prefix: --mincols
- id: prefix
  doc: ': Prefix'
  type: string
  inputBinding:
    prefix: --prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- maf_extract_chrom_ranges.py
