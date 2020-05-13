class: CommandLineTool
id: filterTADsAndCPs.pl.cwl
inputs:
- id: o
  doc: '(def: out)'
  type: string
  inputBinding:
    prefix: -o
- id: cp
  doc: (input contact point file, 2D BED format
  type: string
  inputBinding:
    prefix: -cp
- id: tad
  doc: (input TAD file, 2D BED format
  type: string
  inputBinding:
    prefix: -tad
- id: d
  doc: '[tagdir2] ... (Used to calculate experiment coverage)'
  type: string
  inputBinding:
    prefix: -d
- id: cpu
  doc: '<#> (number of processes to use to count reads in mult. tagdirs at once)]n         -genome
    <genome version> (genome version, def: none)'
  type: boolean
  inputBinding:
    prefix: -cpu
- id: bad_chr
  doc: '[chr] ... (chromosomes to skip e.g. chrY, def: none)'
  type: string
  inputBinding:
    prefix: -badChr
- id: res
  doc: '<#> (resolution for interaction/region overlap, def: 15000)'
  type: boolean
  inputBinding:
    prefix: -res
- id: mint_a_dir
  doc: '<#> (minimum TAD inclusion ratio, def: 0)'
  type: boolean
  inputBinding:
    prefix: -minTADir
- id: mint_ad_cov
  doc: '<#> (minimum TAD coverage ratio relative to average, def: 0.25)'
  type: boolean
  inputBinding:
    prefix: -minTADcov
- id: min_cp_score
  doc: '<#> (minimum int score, def: 0)'
  type: boolean
  inputBinding:
    prefix: -minCPscore
- id: min_cp_cov
  doc: '<#> (minimum int coverage ratio relative to average, def: 0.25)'
  type: boolean
  inputBinding:
    prefix: -minCPcov
outputs: []
cwlVersion: v1.1
baseCommand:
- filterTADsAndCPs.pl
