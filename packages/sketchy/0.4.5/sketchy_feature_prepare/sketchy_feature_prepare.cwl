class: CommandLineTool
id: sketchy_feature_prepare.cwl
inputs:
- id: in_index
  doc: Path to feature index input file  [required]
  type: File?
  inputBinding:
    prefix: --index
- id: in_drop
  doc: Comma separated string of columns to drop
  type: string?
  inputBinding:
    prefix: --drop
- id: in_prefix
  doc: Prefix for prepared feature index output files
  type: File?
  inputBinding:
    prefix: --prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0
cwlVersion: v1.1
baseCommand:
- sketchy
- feature
- prepare
