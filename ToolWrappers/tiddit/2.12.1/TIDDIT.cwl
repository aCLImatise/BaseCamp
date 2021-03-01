class: CommandLineTool
id: TIDDIT.cwl
inputs:
- id: in_sv
  doc: collect SV signals
  type: boolean?
  inputBinding:
    prefix: --sv
- id: in_cov
  doc: select the cov module to analyse the coverage of the genome using bins of a
    specified size
  type: boolean?
  inputBinding:
    prefix: --cov
- id: in_gc
  doc: select the gc module to compute the gc content across the genome using bins
    of a specified size(accepts a fasta through stdin)
  type: boolean?
  inputBinding:
    prefix: --gc
- id: in_module
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
  dockerPull: quay.io/biocontainers/tiddit:2.12.1--py37h0498b6d_0
cwlVersion: v1.1
baseCommand:
- TIDDIT
