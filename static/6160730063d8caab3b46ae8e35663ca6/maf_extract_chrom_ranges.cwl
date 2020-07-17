class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/maf_extract_chrom_ranges.py.cwl
inputs:
- id: min_cols
  doc: Minimum length (columns) required for alignment to be output
  type: long
  inputBinding:
    prefix: --mincols
- id: prefix
  doc: Prefix
  type: string
  inputBinding:
    prefix: --prefix
- id: interval_file
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: refname_vertical_line_ref_index
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- maf_extract_chrom_ranges.py
