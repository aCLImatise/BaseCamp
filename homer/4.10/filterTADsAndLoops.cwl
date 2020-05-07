class: CommandLineTool
id: filterTADsAndLoops.pl.cwl
inputs:
- id: o
  doc: '(def: out)'
  type: string
  inputBinding:
    prefix: -o
- id: loop
  doc: (input loop file, 2D BED format)
  type: string
  inputBinding:
    prefix: -loop
- id: tad
  doc: (input TAD file, 2D BED format)
  type: string
  inputBinding:
    prefix: -tad
- id: d
  doc: '[tagdir2] ... (Used to calculate experiment coverage)'
  type: string
  inputBinding:
    prefix: -d
- id: cpu
  doc: <#> (number of processes to use to count reads in multiple tagdirs at once)
  type: boolean
  inputBinding:
    prefix: -cpu
- id: genome
  doc: '(genome version, def: none)'
  type: string
  inputBinding:
    prefix: -genome
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
- id: min_loop_score
  doc: '<#> (minimum int score, def: 0)'
  type: boolean
  inputBinding:
    prefix: -minLoopScore
- id: min_coverage_tad
  doc: '<#> (minimum TAD coverage ratio relative to average, def: 0.25)'
  type: boolean
  inputBinding:
    prefix: -minCoverageTAD
- id: min_coverage_anchor
  doc: '<#> (minimum int coverage ratio relative to average, def: 0.25)'
  type: boolean
  inputBinding:
    prefix: -minCoverageAnchor
outputs: []
cwlVersion: v1.1
baseCommand:
- filterTADsAndLoops.pl
