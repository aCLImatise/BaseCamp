#!/usr/bin/env cwl-runner

baseCommand:
- findHiCCompartments.pl
class: CommandLineTool
cwlVersion: v1.0
id: findhiccompartments.pl
inputs:
- doc: (return inactive, not active regions)
  id: opp
  inputBinding:
    prefix: -opp
  type: boolean
- doc: '<#> (threshold for active regions, default: 0)'
  id: thresh
  inputBinding:
    prefix: -thresh
  type: boolean
- doc: '<2nd PC1.txt file> (for differential domains) -diff <#> (difference threshold,
    default: 0.5)'
  id: bg
  inputBinding:
    prefix: -bg
  type: boolean
- doc: (for differential domains)
  id: corr
  inputBinding:
    prefix: -corr
  type: string
- doc: '<#> (correlation threshold, default: 0.4)'
  id: corr_diff
  inputBinding:
    prefix: -corrDiff
  type: boolean
- doc: '<#> (minimum size of domains, default: 100000)'
  id: min
  inputBinding:
    prefix: -min
  type: boolean
