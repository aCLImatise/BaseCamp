class: CommandLineTool
id: sketchy_feature_drop.cwl
inputs:
- id: index
  doc: Path to feature index input file.  [required]
  type: File
  inputBinding:
    prefix: --index
- id: output
  doc: Path to dropped feature index output file [index.dropped.tsv]
  type: File
  inputBinding:
    prefix: --output
- id: columns
  doc: Comma-delimited string of columns to drop or "clean" [clean]
  type: string
  inputBinding:
    prefix: --columns
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- feature
- drop
