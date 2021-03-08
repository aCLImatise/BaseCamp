class: CommandLineTool
id: retest.cwl
inputs:
- id: in_debug
  doc: increase output verbosity and perform additional
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_local
  doc: test local directory scripts instead of pip installed
  type: boolean?
  inputBinding:
    prefix: --local
- id: in_min_score
  doc: "minimum score/confidence of the classification of a\nread to pass the quality\
    \ filter; 35 by default"
  type: long?
  inputBinding:
    prefix: --minscore
- id: in_min_tax_a
  doc: perform additional tests for mintaxa dependency
  type: boolean?
  inputBinding:
    prefix: --mintaxa
- id: in_roc
  doc: perform additional tests and get ROC figures
  type: boolean?
  inputBinding:
    prefix: --roc
- id: in_skip
  doc: "skip the recentrifuge calls and just load the results\nto plot ROC figure\
    \ by mintaxa (results should be\navailable)"
  type: boolean?
  inputBinding:
    prefix: --skip
- id: in_strain
  doc: set this same flag in rcf [experimental feature]
  type: boolean?
  inputBinding:
    prefix: --strain
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_i
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_checks
  doc: -i, --ignore          continue testing even if errors arise
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/recentrifuge:1.3.2--py_0
cwlVersion: v1.1
baseCommand:
- retest
