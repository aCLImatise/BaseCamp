class: CommandLineTool
id: sketchy_feature_merge.cwl
inputs:
- id: sketch
  doc: Path to sketch file to parse indices from [required]
  type: File
  inputBinding:
    prefix: --sketch
- id: features
  doc: Path to genotype feature file to merge indices with sketch  [required]
  type: File
  inputBinding:
    prefix: --features
- id: key
  doc: Legacy key file to translate UUIDs [dep.]
  type: File
  inputBinding:
    prefix: --key
- id: index_column
  doc: Feature index column to merge indices on [idx]
  type: string
  inputBinding:
    prefix: --index_column
- id: mash_column
  doc: Mash index column to merge indices on [ids]
  type: string
  inputBinding:
    prefix: --mash_column
- id: prefix
  doc: 'Prefix for output file: {prefix}.tsv [sketchy]'
  type: string
  inputBinding:
    prefix: --prefix
- id: verbose
  doc: Enable verbose output for merge operations
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- feature
- merge
