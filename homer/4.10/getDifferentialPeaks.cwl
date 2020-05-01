#!/usr/bin/env cwl-runner

baseCommand:
- getDifferentialPeaks
class: CommandLineTool
cwlVersion: v1.0
id: getdifferentialpeaks
inputs:
- doc: '<#> (fold enrichment over background tag count, default: 4.0)'
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: '<#> (poisson enrichment p-value over background tag count, default: 0.0001)'
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: (return similar peaks instead of different peaks)
  id: same
  inputBinding:
    prefix: -same
  type: boolean
- doc: (return peaks with higher tag counts in background instead of target library)
  id: rev
  inputBinding:
    prefix: -rev
  type: boolean
- doc: '<#> (size of region around peak to count tags, default: -fixed)'
  id: size
  inputBinding:
    prefix: -size
  type: boolean
- doc: (Count tags relative to actual peak start and stop, default) "-size given"
    is the same as "-fixed"
  id: fixed
  inputBinding:
    prefix: -fixed
  type: boolean
- doc: '<#> (Maximum tags per bp to count, 0 = no limit, default: 0)'
  id: tbp
  inputBinding:
    prefix: -tbp
  type: boolean
- doc: '<#> (Maximum background tags per bp to count, 0 = no limit, default: 0)'
  id: tbp_bg
  inputBinding:
    prefix: -tbpBg
  type: boolean
