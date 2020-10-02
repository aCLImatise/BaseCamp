class: CommandLineTool
id: sketchy_feature_drop.cwl
inputs:
- id: in_index
  doc: Path to feature index input file.  [required]
  type: File
  inputBinding:
    prefix: --index
- id: in_output
  doc: "Path to dropped feature index output file\n[index.dropped.tsv]"
  type: File
  inputBinding:
    prefix: --output
- id: in_columns
  doc: "Comma-delimited string of columns to drop or \"clean\"\n[clean]"
  type: string
  inputBinding:
    prefix: --columns
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Path to dropped feature index output file\n[index.dropped.tsv]"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- sketchy
- feature
- drop
