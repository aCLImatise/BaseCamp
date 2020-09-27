class: CommandLineTool
id: filterTADsAndLoops.pl.cwl
inputs:
- id: in_def_out
  doc: '(def: out)'
  type: string
  inputBinding:
    prefix: -o
- id: in_loop
  doc: (input loop file, 2D BED format)
  type: long
  inputBinding:
    prefix: -loop
- id: in_tad
  doc: (input TAD file, 2D BED format)
  type: long
  inputBinding:
    prefix: -tad
- id: in_used_calculate_coverage
  doc: '[tagdir2] ... (Used to calculate experiment coverage)'
  type: long
  inputBinding:
    prefix: -d
- id: in_cpu
  doc: <#> (number of processes to use to count reads in multiple tagdirs at once)
  type: boolean
  inputBinding:
    prefix: -cpu
- id: in_genome
  doc: '(genome version, def: none)'
  type: string
  inputBinding:
    prefix: -genome
- id: in_bad_chr
  doc: '[chr] ... (chromosomes to skip e.g. chrY, def: none)'
  type: string
  inputBinding:
    prefix: -badChr
- id: in_res
  doc: '<#> (resolution for interaction/region overlap, def: 15000)'
  type: boolean
  inputBinding:
    prefix: -res
- id: in_mint_a_dir
  doc: '<#> (minimum TAD inclusion ratio, def: 0)'
  type: boolean
  inputBinding:
    prefix: -minTADir
- id: in_min_loop_score
  doc: '<#> (minimum int score, def: 0)'
  type: boolean
  inputBinding:
    prefix: -minLoopScore
- id: in_min_coverage_tad
  doc: '<#> (minimum TAD coverage ratio relative to average, def: 0.25)'
  type: boolean
  inputBinding:
    prefix: -minCoverageTAD
- id: in_min_coverage_anchor
  doc: '<#> (minimum int coverage ratio relative to average, def: 0.25)'
  type: boolean
  inputBinding:
    prefix: -minCoverageAnchor
- id: in_tad_score
  doc: -LoopScore <loop score file>
  type: File
  inputBinding:
    prefix: -TADscore
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filterTADsAndLoops.pl
