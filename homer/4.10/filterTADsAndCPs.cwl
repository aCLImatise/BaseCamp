#!/usr/bin/env cwl-runner

baseCommand:
- filterTADsAndCPs.pl
class: CommandLineTool
cwlVersion: v1.0
id: filtertadsandcps.pl
inputs:
- doc: '(def: out)'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: (input contact point file, 2D BED format
  id: cp
  inputBinding:
    prefix: -cp
  type: string
- doc: (input TAD file, 2D BED format
  id: tad
  inputBinding:
    prefix: -tad
  type: string
- doc: '[tagdir2] ... (Used to calculate experiment coverage)'
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: '<#> (number of processes to use to count reads in mult. tagdirs at once)]n         -genome
    <genome version> (genome version, def: none)'
  id: cpu
  inputBinding:
    prefix: -cpu
  type: boolean
- doc: '[chr] ... (chromosomes to skip e.g. chrY, def: none)'
  id: bad_chr
  inputBinding:
    prefix: -badChr
  type: string
- doc: '<#> (resolution for interaction/region overlap, def: 15000)'
  id: res
  inputBinding:
    prefix: -res
  type: boolean
- doc: '<#> (minimum TAD inclusion ratio, def: 0)'
  id: mint_a_dir
  inputBinding:
    prefix: -minTADir
  type: boolean
- doc: '<#> (minimum TAD coverage ratio relative to average, def: 0.25)'
  id: mint_ad_cov
  inputBinding:
    prefix: -minTADcov
  type: boolean
- doc: '<#> (minimum int score, def: 0)'
  id: min_cp_score
  inputBinding:
    prefix: -minCPscore
  type: boolean
- doc: '<#> (minimum int coverage ratio relative to average, def: 0.25)'
  id: min_cp_cov
  inputBinding:
    prefix: -minCPcov
  type: boolean
