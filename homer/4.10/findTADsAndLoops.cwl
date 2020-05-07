class: CommandLineTool
id: findTADsAndLoops.pl.cwl
inputs:
- id: cpu
  doc: <#> (max CPUs to use)
  type: boolean
  inputBinding:
    prefix: -cpu
- id: res
  doc: '<#> (resolution, default: 3000)'
  type: boolean
  inputBinding:
    prefix: -res
- id: window
  doc: '<#> (overlapping window size, i.e. superRes, default: 15000)'
  type: boolean
  inputBinding:
    prefix: -window
- id: balance
  doc: '| -nobalance (balance contact maps, default: -nobalance)'
  type: boolean
  inputBinding:
    prefix: -balance
- id: mind_ist
  doc: '<#> (minimum interaction distance to consider, default: 25000)'
  type: boolean
  inputBinding:
    prefix: -minDist
- id: max_dist
  doc: '<#> (maximum interaction distance to consider, default: 2000000)'
  type: boolean
  inputBinding:
    prefix: -maxDist
- id: mint_ad_size
  doc: '<#> (default: 45000)'
  type: boolean
  inputBinding:
    prefix: -minTADsize
- id: mint_ad_score
  doc: '<#> (minimum inclusion score to call TAD, default: 1.5)'
  type: boolean
  inputBinding:
    prefix: -minTADscore
- id: keep_overlapping_tads
  doc: (by default, program removes overlapping TAD calls)
  type: boolean
  inputBinding:
    prefix: -keepOverlappingTADs
- id: min_loop_dist
  doc: '<#> (minimum length of contact points to find, default: 3x window size)'
  type: boolean
  inputBinding:
    prefix: -minLoopDist
- id: anchor_size
  doc: '<#> (size of region used to calculate loop score, default: window size)'
  type: boolean
  inputBinding:
    prefix: -anchorSize
- id: anchor_local_bg_size
  doc: '<#> (size of region used to calculate local bg, default: 5x window size)'
  type: boolean
  inputBinding:
    prefix: -anchorLocalBgSize
- id: min_loop_reads
  doc: '<#> (minimum number of adjusted reads for contact point, default: use -poissonLoopGlobalBg)'
  type: boolean
  inputBinding:
    prefix: -minLoopReads
- id: skip_filtering
  doc: (skip post-feature finding filtering step)
  type: boolean
  inputBinding:
    prefix: -skipFiltering
- id: keep_unfiltered
  doc: (keep unfiltered version of TADs/Loops)
  type: boolean
  inputBinding:
    prefix: -keepUnfiltered
- id: p
  doc: <peak/BED file> (File of genome duplications/bad/blacklisted regions to exclude
    from Loop/TAD endpoints)
  type: boolean
  inputBinding:
    prefix: -p
- id: genome
  doc: (i.e. hg19, hg38)
  type: string
  inputBinding:
    prefix: -genome
- id: bad_chr
  doc: '[chr] ... (chromosomes to skip/exclude)'
  type: string
  inputBinding:
    prefix: -badChr
- id: min_coverage_tad
  doc: '<#> (minimum ratio of read coverage in TAD relative to genome average, def:
    0.25)'
  type: boolean
  inputBinding:
    prefix: -minCoverageTAD
- id: min_coverage_anchor
  doc: '<#> (minimum ratio of read coverage at anchors relative to average, def: 0.25)'
  type: boolean
  inputBinding:
    prefix: -minCoverageAnchor
- id: ins_dist
  doc: '<#> (distance across which to calculate insulation ratio, default: 150000)'
  type: boolean
  inputBinding:
    prefix: -insDist
- id: did_ist
  doc: '<#> (distance across which to calculate directionality index , default: 1000000)'
  type: boolean
  inputBinding:
    prefix: -diDist
- id: override
  doc: (if res/maxDist are set to produce huge matrices and you have the RAM, you
    may need to include this)
  type: boolean
  inputBinding:
    prefix: -override
- id: raw
  doc: (report raw interaction counts, will impact TAD inclusion ratio scoring too)
  type: boolean
  inputBinding:
    prefix: -raw
- id: norm_total
  doc: <#> (normalize based on this depth of sequencing for Hi-C experiments)
  type: boolean
  inputBinding:
    prefix: -normTotal
outputs: []
cwlVersion: v1.1
baseCommand:
- findTADsAndLoops.pl
