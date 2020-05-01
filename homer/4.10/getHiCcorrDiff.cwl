#!/usr/bin/env cwl-runner

baseCommand:
- getHiCcorrDiff.pl
class: CommandLineTool
cwlVersion: v1.0
id: gethiccorrdiff.pl
inputs:
- doc: '<#> (resolution in bp, default: 50000)'
  id: res
  inputBinding:
    prefix: -res
  type: boolean
- doc: '<#> (window resolution in bp, i.e. window size, default: 100000)'
  id: window
  inputBinding:
    prefix: -window
  type: boolean
- doc: '<#> (number of expected reads needed per data point when calculating correlation,
    default: 3)'
  id: corr_depth
  inputBinding:
    prefix: -corrDepth
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
- doc: '<#> (maximum distance around regions to calculate similarity metrics, default:
    none)'
  id: max_dist
  inputBinding:
    prefix: -maxDist
  type: boolean
- doc: '<#> (number of CPUs to use, default: 1)'
  id: cpu
  inputBinding:
    prefix: -cpu
  type: boolean
