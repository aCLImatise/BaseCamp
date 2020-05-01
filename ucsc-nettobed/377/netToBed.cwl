#!/usr/bin/env cwl-runner

baseCommand:
- netToBed
class: CommandLineTool
cwlVersion: v1.0
id: nettobed
inputs:
- doc: ''
  id: in_net
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: out_bed
  inputBinding:
    position: 1
  type: string
- doc: at gaps of given size or more
  id: max_gap
  inputBinding:
    prefix: -maxGap
  type: string
- doc: fill of given size of above.
  id: min_fill
  inputBinding:
    prefix: -minFill
  type: string
