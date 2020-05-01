#!/usr/bin/env cwl-runner

baseCommand:
- findTADsAndLoops.pl
class: CommandLineTool
cwlVersion: v1.0
id: findtadsandloops.pl
inputs:
- doc: <#> (max CPUs to use)
  id: cpu
  inputBinding:
    prefix: -cpu
  type: boolean
- doc: '<#> (resolution, default: 3000)'
  id: res
  inputBinding:
    prefix: -res
  type: boolean
- doc: '<#> (overlapping window size, i.e. superRes, default: 15000)'
  id: window
  inputBinding:
    prefix: -window
  type: boolean
- doc: '| -nobalance (balance contact maps, default: -nobalance)'
  id: balance
  inputBinding:
    prefix: -balance
  type: boolean
- doc: '<#> (minimum interaction distance to consider, default: 25000)'
  id: mind_ist
  inputBinding:
    prefix: -minDist
  type: boolean
- doc: '<#> (maximum interaction distance to consider, default: 2000000)'
  id: max_dist
  inputBinding:
    prefix: -maxDist
  type: boolean
- doc: '<#> (default: 45000)'
  id: mint_ad_size
  inputBinding:
    prefix: -minTADsize
  type: boolean
- doc: '<#> (minimum inclusion score to call TAD, default: 1.5)'
  id: mint_ad_score
  inputBinding:
    prefix: -minTADscore
  type: boolean
- doc: (by default, program removes overlapping TAD calls)
  id: keep_overlapping_tads
  inputBinding:
    prefix: -keepOverlappingTADs
  type: boolean
- doc: '<#> (minimum length of contact points to find, default: 3x window size)'
  id: min_loop_dist
  inputBinding:
    prefix: -minLoopDist
  type: boolean
- doc: '<#> (size of region used to calculate loop score, default: window size)'
  id: anchor_size
  inputBinding:
    prefix: -anchorSize
  type: boolean
- doc: '<#> (size of region used to calculate local bg, default: 5x window size)'
  id: anchor_local_bg_size
  inputBinding:
    prefix: -anchorLocalBgSize
  type: boolean
- doc: '<#> (minimum number of adjusted reads for contact point, default: use -poissonLoopGlobalBg)'
  id: min_loop_reads
  inputBinding:
    prefix: -minLoopReads
  type: boolean
- doc: (skip post-feature finding filtering step)
  id: skip_filtering
  inputBinding:
    prefix: -skipFiltering
  type: boolean
- doc: (keep unfiltered version of TADs/Loops)
  id: keep_unfiltered
  inputBinding:
    prefix: -keepUnfiltered
  type: boolean
- doc: <peak/BED file> (File of genome duplications/bad/blacklisted regions to exclude
    from Loop/TAD endpoints)
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: (i.e. hg19, hg38)
  id: genome
  inputBinding:
    prefix: -genome
  type: string
- doc: '[chr] ... (chromosomes to skip/exclude)'
  id: bad_chr
  inputBinding:
    prefix: -badChr
  type: string
- doc: '<#> (minimum ratio of read coverage in TAD relative to genome average, def:
    0.25)'
  id: min_coverage_tad
  inputBinding:
    prefix: -minCoverageTAD
  type: boolean
- doc: '<#> (minimum ratio of read coverage at anchors relative to average, def: 0.25)'
  id: min_coverage_anchor
  inputBinding:
    prefix: -minCoverageAnchor
  type: boolean
- doc: '<#> (distance across which to calculate insulation ratio, default: 150000)'
  id: ins_dist
  inputBinding:
    prefix: -insDist
  type: boolean
- doc: '<#> (distance across which to calculate directionality index , default: 1000000)'
  id: did_ist
  inputBinding:
    prefix: -diDist
  type: boolean
- doc: (if res/maxDist are set to produce huge matrices and you have the RAM, you
    may need to include this)
  id: override
  inputBinding:
    prefix: -override
  type: boolean
- doc: (report raw interaction counts, will impact TAD inclusion ratio scoring too)
  id: raw
  inputBinding:
    prefix: -raw
  type: boolean
- doc: <#> (normalize based on this depth of sequencing for Hi-C experiments)
  id: norm_total
  inputBinding:
    prefix: -normTotal
  type: boolean
