class: CommandLineTool
id: retest.cwl
inputs:
- id: debug
  doc: increase output verbosity and perform additional checks
  type: boolean
  inputBinding:
    prefix: --debug
- id: ignore
  doc: continue testing even if errors arise
  type: boolean
  inputBinding:
    prefix: --ignore
- id: local
  doc: test local directory scripts instead of pip installed
  type: boolean
  inputBinding:
    prefix: --local
- id: min_tax_a
  doc: Perform additional tests for mintaxa dependency
  type: boolean
  inputBinding:
    prefix: --mintaxa
- id: roc
  doc: Perform additional tests and get ROC figures
  type: boolean
  inputBinding:
    prefix: --roc
- id: skip
  doc: Skip the recentrifuge calls and just load the results to plot ROC figure by
    mintaxa (results should be available)
  type: boolean
  inputBinding:
    prefix: --skip
- id: min_score
  doc: minimum score/confidence of the classification of a read to pass the quality
    filter; 35 by default
  type: string
  inputBinding:
    prefix: --minscore
outputs: []
cwlVersion: v1.1
baseCommand:
- retest
