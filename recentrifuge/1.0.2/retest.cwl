#!/usr/bin/env cwl-runner

baseCommand:
- retest
class: CommandLineTool
cwlVersion: v1.0
id: retest
inputs:
- doc: increase output verbosity and perform additional checks
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: continue testing even if errors arise
  id: ignore
  inputBinding:
    prefix: --ignore
  type: boolean
- doc: test local directory scripts instead of pip installed
  id: local
  inputBinding:
    prefix: --local
  type: boolean
- doc: Perform additional tests for mintaxa dependency
  id: min_tax_a
  inputBinding:
    prefix: --mintaxa
  type: boolean
- doc: Perform additional tests and get ROC figures
  id: roc
  inputBinding:
    prefix: --roc
  type: boolean
- doc: Skip the recentrifuge calls and just load the results to plot ROC figure by
    mintaxa (results should be available)
  id: skip
  inputBinding:
    prefix: --skip
  type: boolean
- doc: minimum score/confidence of the classification of a read to pass the quality
    filter; 35 by default
  id: min_score
  inputBinding:
    prefix: --minscore
  type: string
