#!/usr/bin/env cwl-runner

baseCommand:
- findHiCDomains.pl
class: CommandLineTool
cwlVersion: v1.0
id: findhicdomains.pl
inputs:
- doc: '<#> (resolution in bp, default: 5000)'
  id: res
  inputBinding:
    prefix: -res
  type: boolean
- doc: '<#> (window resolution in bp, i.e. superRes, default: 25000)'
  id: window
  inputBinding:
    prefix: -window
  type: boolean
- doc: '<#> (max distance from loci to check direction index, default: 1000000)'
  id: max_dist
  inputBinding:
    prefix: -maxDist
  type: boolean
- doc: '<#> (minimum distance from loci to check direction index, default: 0)'
  id: mind_ist
  inputBinding:
    prefix: -minDist
  type: boolean
- doc: '(score direction index with log ratios, default: use linear ratios)'
  id: log
  inputBinding:
    prefix: -log
  type: boolean
- doc: '<#> (exclude regions with sequencing depth exceeding # std deviations, default:
    8)'
  id: std
  inputBinding:
    prefix: -std
  type: boolean
- doc: '<#> (exclude regions with sequencing depth less than this fraction of mean,
    default: 0.05)'
  id: min
  inputBinding:
    prefix: -min
  type: boolean
- doc: '<#> (number of CPUs to use, default: 1)'
  id: cpu
  inputBinding:
    prefix: -cpu
  type: boolean
- doc: '<#> (smoothing window, removes noise in directionality index, default: 25000)'
  id: window
  inputBinding:
    prefix: -window
  type: boolean
- doc: '<#> (minimum index score to be considered for boundary (as zscore), default:
    0.5)'
  id: min_index
  inputBinding:
    prefix: -minIndex
  type: boolean
- doc: '<#> (minimum index score to be considered for boundary (as zscore), default:
    1e-05)'
  id: mine_xp_index
  inputBinding:
    prefix: -minExpIndex
  type: boolean
- doc: '<#> (minimum change in dir-index between boundaries (as zscore), default:
    1)'
  id: min_delta
  inputBinding:
    prefix: -minDelta
  type: boolean
- doc: '<#> (minimum domain length, default: 25000)'
  id: minlength
  inputBinding:
    prefix: -minLength
  type: boolean
- doc: '<#> (maximum variation in directionality index within domain, default: 0.25)'
  id: max_error
  inputBinding:
    prefix: -maxError
  type: boolean
