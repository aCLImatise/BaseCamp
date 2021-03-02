class: CommandLineTool
id: sketchy_rs_evaluate.cwl
inputs:
- id: in_features
  doc: genotype feature index
  type: File?
  inputBinding:
    prefix: --features
- id: in_stable
  doc: reads to stable breakpoint
  type: long?
  inputBinding:
    prefix: --stable
- id: in_sketchy_rs
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0
cwlVersion: v1.1
baseCommand:
- sketchy-rs
- evaluate
