class: CommandLineTool
id: fil.cwl
inputs:
- id: in__sigma_float
  doc: ': sigma (FLOAT) [default: 0.01]'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in__maxdepth_int
  doc: ': maxdepth (INT) [default: 10000]'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in__amplicon_mode
  doc: ': amplicon mode [default: shotgun]'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_drop_snvs_are
  doc: ': drop SNVs that are adjacent to insertions/deletions (alternate behaviour)'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_b
  doc: ''
  type: string?
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/shorah:1.99.2--py38h032b7f5_1
cwlVersion: v1.1
baseCommand:
- fil
