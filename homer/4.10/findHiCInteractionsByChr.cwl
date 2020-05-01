#!/usr/bin/env cwl-runner

baseCommand:
- findHiCInteractionsByChr.pl
class: CommandLineTool
cwlVersion: v1.0
id: findhicinteractionsbychr.pl
inputs:
- doc: '<#> (resolution in bp, default: 2000)'
  id: res
  inputBinding:
    prefix: -res
  type: boolean
- doc: '<#> (window resolution in bp, i.e. superRes, default: 10000)'
  id: window
  inputBinding:
    prefix: -window
  type: boolean
- doc: '<#> (minimum interaction distance to search, default: superRes distance)'
  id: mind_ist
  inputBinding:
    prefix: -minDist
  type: boolean
- doc: '<#> (minimum interaction distance to search, default: 10000000)'
  id: max_dist
  inputBinding:
    prefix: -maxDist
  type: boolean
- doc: '<#> (pvalue cutoff, default: 0.01)'
  id: p_value
  inputBinding:
    prefix: -pvalue
  type: boolean
- doc: '<#> (z-score cutoff, default: 1.5)'
  id: zscore
  inputBinding:
    prefix: -zscore
  type: boolean
- doc: '<#> (number of CPUs to use, default: 1)'
  id: cpu
  inputBinding:
    prefix: -cpu
  type: boolean
- doc: (Background HiC directory)
  id: ped
  inputBinding:
    prefix: -ped
  type: string
- doc: '<#> (exclude regions with sequencing depth exceeding # std deviations, default:
    4)'
  id: std
  inputBinding:
    prefix: -std
  type: boolean
- doc: '<#> (exclude regions with sequencing depth less than this fraction of mean,
    default: 0.2)'
  id: min
  inputBinding:
    prefix: -min
  type: boolean
