class: CommandLineTool
id: sketchy_feature_merge.cwl
inputs:
- id: in_path_sketch_file
  doc: "Path to sketch file to parse indices from\n[required]"
  type: File?
  inputBinding:
    prefix: --sketch
- id: in_features
  doc: Path to genotype feature file to merge indices with
  type: File?
  inputBinding:
    prefix: --features
- id: in_key
  doc: Legacy key file to translate UUIDs [dep.]
  type: File?
  inputBinding:
    prefix: --key
- id: in_index_column
  doc: Feature index column to merge indices on [idx]
  type: string?
  inputBinding:
    prefix: --index_column
- id: in_mash_column
  doc: Mash index column to merge indices on [ids]
  type: string?
  inputBinding:
    prefix: --mash_column
- id: in_prefix
  doc: 'Prefix for output file: {prefix}.tsv [sketchy]'
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_verbose
  doc: Enable verbose output for merge operations
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_var_7
  doc: '[required]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: 'Prefix for output file: {prefix}.tsv [sketchy]'
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0
cwlVersion: v1.1
baseCommand:
- sketchy
- feature
- merge
