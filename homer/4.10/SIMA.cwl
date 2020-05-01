#!/usr/bin/env cwl-runner

baseCommand:
- SIMA.pl
class: CommandLineTool
cwlVersion: v1.0
id: sima.pl
inputs:
- doc: (Domains to perform analysis on)
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: '[peak file2] ... (features to check for enrichment)'
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: <#> (resolution, default=2500)
  id: res
  inputBinding:
    prefix: -res
  type: boolean
- doc: <#> (super resolution/window size, default=10000)
  id: window
  inputBinding:
    prefix: -window
  type: boolean
- doc: '<#> (minimum interaction read distance, default: 2x superRes)'
  id: mind_ist
  inputBinding:
    prefix: -minDist
  type: boolean
- doc: '<#> (minimum domain size, default: 500000)'
  id: mind_size
  inputBinding:
    prefix: -minDsize
  type: boolean
- doc: <#> (minimum distance between domains to test significance, default=-1)
  id: min
  inputBinding:
    prefix: -min
  type: boolean
- doc: <#> (maximum distance, set to -1 to allow inter-chr, default=1e9)
  id: max
  inputBinding:
    prefix: -max
  type: boolean
- doc: '(only analyze this chromosome, default: all)'
  id: chr
  inputBinding:
    prefix: -chr
  type: string
- doc: '[peak file2] ... (heterogenous peak enrichments)'
  id: p2
  inputBinding:
    prefix: -p2
  type: string
- doc: (All versus All, compare -p peaks against one another)
  id: avs_a
  inputBinding:
    prefix: -AvsA
  type: boolean
- doc: '<#> (Number of randomizations per domain, default: 1000)'
  id: n
  inputBinding:
    prefix: -N
  type: boolean
- doc: (adjust randomization based on HiC read depth)
  id: r_depth
  inputBinding:
    prefix: -rdepth
  type: boolean
- doc: '<#> (number of CPUs to use for analysis, default: 1)'
  id: cpu
  inputBinding:
    prefix: -cpu
  type: boolean
- doc: (merge results for all domains)
  id: merge
  inputBinding:
    prefix: -merge
  type: boolean
- doc: '<pvalue|ratio> (output stat for matrix mode, default: ratio)'
  id: stat
  inputBinding:
    prefix: -stat
  type: boolean
- doc: '<#> (p-value cutoff to report the ratio, default: 0.01)'
  id: p_value
  inputBinding:
    prefix: -pvalue
  type: boolean
- doc: '<#> (minimum number of peaks, default: none)'
  id: min_peaks
  inputBinding:
    prefix: -minPeaks
  type: boolean
- doc: <#> (resolution of matrix, default=200000)
  id: res
  inputBinding:
    prefix: -res
  type: boolean
- doc: (features from initial analysis to show)
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: (features from initial analysis to show, if used/different)
  id: p2
  inputBinding:
    prefix: -p2
  type: string
- doc: (domain name to show)
  id: d_name
  inputBinding:
    prefix: -dname
  type: string
- doc: (domain name to show, if different)
  id: dname2
  inputBinding:
    prefix: -dname2
  type: string
