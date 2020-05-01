#!/usr/bin/env cwl-runner

baseCommand:
- last-map-probs
class: CommandLineTool
cwlVersion: v1.0
id: last-map-probs
inputs:
- doc: "don't write alignments with mismap probability > M (default: 0.01)"
  id: mis_map
  inputBinding:
    prefix: --mismap
  type: string
- doc: "don't write alignments with score < S (default: e+t*ln[1000])"
  id: score
  inputBinding:
    prefix: --score
  type: string
