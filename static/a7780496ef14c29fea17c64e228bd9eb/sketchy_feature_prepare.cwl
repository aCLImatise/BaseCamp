class: CommandLineTool
id: sketchy_feature_prepare.cwl
inputs:
- id: index
  doc: Path to feature index input file  [required]
  type: File
  inputBinding:
    prefix: --index
- id: drop
  doc: Comma separated string of columns to drop
  type: string
  inputBinding:
    prefix: --drop
- id: prefix
  doc: Prefix for prepared feature index output files
  type: File
  inputBinding:
    prefix: --prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- feature
- prepare
