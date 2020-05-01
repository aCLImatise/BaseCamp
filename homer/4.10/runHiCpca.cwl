#!/usr/bin/env cwl-runner

baseCommand:
- runHiCpca.pl
class: CommandLineTool
cwlVersion: v1.0
id: runhicpca.pl
inputs:
- doc: '<#> (resolution in bp, default: 50000)'
  id: res
  inputBinding:
    prefix: -res
  type: boolean
- doc: '<#> (overlapping window resolution in bp, i.e. superRes, default: 100000)'
  id: window
  inputBinding:
    prefix: -window
  type: boolean
- doc: <K4me+ regions> (Regions to use to help decide sign on principal component
    [active=+])
  id: active
  inputBinding:
    prefix: -active
  type: boolean
- doc: (Regions to use to help decide sign on principal component [inactive=-])
  id: inactive
  inputBinding:
    prefix: -inactive
  type: string
- doc: (If you don't have seed regions, this will use the TSS file as active seeds)
  id: genome
  inputBinding:
    prefix: -genome
  type: string
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
- doc: (If R is not accessible via the $PATH variable)
  id: rpath
  inputBinding:
    prefix: -rpath
  type: File
- doc: '<#> (number of principal components to report, default: 1)'
  id: pc
  inputBinding:
    prefix: -pc
  type: boolean
- doc: '<#> (number of CPUs to use, default: 1)'
  id: cpu
  inputBinding:
    prefix: -cpu
  type: boolean
- doc: <regions peak/BED file> (instead of analysis by chr, separate by these regions,
    i.e. arms)
  id: custom_regions
  inputBinding:
    prefix: -customRegions
  type: boolean
- doc: '<#> (cluster correlation matrix, define clusters using correlation threshold:
    i.e. 0.25)'
  id: cluster
  inputBinding:
    prefix: -cluster
  type: boolean
- doc: '<#> (minimum cluster size, as fraction of chromosome, default: 0.02)'
  id: min_p
  inputBinding:
    prefix: -minp
  type: boolean
