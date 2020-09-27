class: CommandLineTool
id: findTADsAndLoops.pl.cwl
inputs:
- id: in_cpu
  doc: <#> (max CPUs to use)
  type: boolean
  inputBinding:
    prefix: -cpu
- id: in_window
  doc: '<#> (overlapping window size, i.e. superRes, default: 15000)'
  type: boolean
  inputBinding:
    prefix: -window
- id: in_balance
  doc: '| -nobalance (balance contact maps, default: -nobalance)'
  type: boolean
  inputBinding:
    prefix: -balance
- id: in_mind_ist
  doc: '<#> (minimum interaction distance to consider, default: 25000)'
  type: boolean
  inputBinding:
    prefix: -minDist
- id: in_max_dist
  doc: '<#> (maximum interaction distance to consider, default: 2000000)'
  type: boolean
  inputBinding:
    prefix: -maxDist
- id: in_default_will_place
  doc: (by default will place output files within the Tag Directory)
  type: Directory
  inputBinding:
    prefix: -o
- id: in_mint_ad_score
  doc: '<#> (minimum inclusion score to call TAD, default: 1.5)'
  type: boolean
  inputBinding:
    prefix: -minTADscore
- id: in_keep_overlapping_tads
  doc: (by default, program removes overlapping TAD calls)
  type: boolean
  inputBinding:
    prefix: -keepOverlappingTADs
- id: in_fold_loop_local_bg
  doc: '<#> (fold threshold for local loop enrichment, default: 1.5)'
  type: boolean
  inputBinding:
    prefix: -foldLoopLocalBg
- id: in_fold_loop_global_bg
  doc: '<#> (fold threshold over avg. interactions of similar distance, default: 2)'
  type: boolean
  inputBinding:
    prefix: -foldLoopGlobalBg
- id: in_poisson_loop_local_bg
  doc: '<#> (poisson p-value threshold for differential interactions per loop, default:
    0.01)'
  type: boolean
  inputBinding:
    prefix: -poissonLoopLocalBg
- id: in_poisson_loop_global_bg
  doc: '<#> (poisson p-value threshold for minimum interactions per loop, default:
    1e-05)'
  type: boolean
  inputBinding:
    prefix: -poissonLoopGlobalBg
- id: in_min_loop_dist
  doc: '<#> (minimum length of contact points to find, default: 3x window size)'
  type: boolean
  inputBinding:
    prefix: -minLoopDist
- id: in_anchor_size
  doc: '<#> (size of region used to calculate loop score, default: window size)'
  type: boolean
  inputBinding:
    prefix: -anchorSize
- id: in_anchor_local_bg_size
  doc: '<#> (size of region used to calculate local bg, default: 5x window size)'
  type: boolean
  inputBinding:
    prefix: -anchorLocalBgSize
- id: in_min_loop_reads
  doc: '<#> (minimum number of adjusted reads for contact point, default: use -poissonLoopGlobalBg)'
  type: boolean
  inputBinding:
    prefix: -minLoopReads
- id: in_skip_filtering
  doc: (skip post-feature finding filtering step)
  type: boolean
  inputBinding:
    prefix: -skipFiltering
- id: in_keep_unfiltered
  doc: (keep unfiltered version of TADs/Loops)
  type: boolean
  inputBinding:
    prefix: -keepUnfiltered
- id: in_file_genome_exclude
  doc: (File of genome duplications/bad/blacklisted regions to exclude from Loop/TAD
    endpoints)
  type: File
  inputBinding:
    prefix: -p
- id: in_genome
  doc: (i.e. hg19, hg38)
  type: long
  inputBinding:
    prefix: -genome
- id: in_bad_chr
  doc: '[chr] ... (chromosomes to skip/exclude)'
  type: string
  inputBinding:
    prefix: -badChr
- id: in_min_coverage_tad
  doc: '<#> (minimum ratio of read coverage in TAD relative to genome average, def:
    0.25)'
  type: boolean
  inputBinding:
    prefix: -minCoverageTAD
- id: in_min_coverage_anchor
  doc: '<#> (minimum ratio of read coverage at anchors relative to average, def: 0.25)'
  type: boolean
  inputBinding:
    prefix: -minCoverageAnchor
- id: in_ins_dist
  doc: '<#> (distance across which to calculate insulation ratio, default: 150000)'
  type: boolean
  inputBinding:
    prefix: -insDist
- id: in_did_ist
  doc: '<#> (distance across which to calculate directionality index , default: 1000000)'
  type: boolean
  inputBinding:
    prefix: -diDist
- id: in_override
  doc: (if res/maxDist are set to produce huge matrices and you have the RAM, you
    may need to include this)
  type: boolean
  inputBinding:
    prefix: -override
- id: in_d
  doc: '[HiC TagDir2] ...'
  type: long
  inputBinding:
    prefix: -d
- id: in_loop
  doc: (will score loop interaction rates from this file)
  type: File
  inputBinding:
    prefix: -loop
- id: in_tad
  doc: (will score TAD inclusion ratios from this file)
  type: File
  inputBinding:
    prefix: -tad
- id: in_raw
  doc: (report raw interaction counts, will impact TAD inclusion ratio scoring too)
  type: boolean
  inputBinding:
    prefix: -raw
- id: in_norm_total
  doc: <#> (normalize based on this depth of sequencing for Hi-C experiments)
  type: boolean
  inputBinding:
    prefix: -normTotal
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_default_will_place
  doc: (by default will place output files within the Tag Directory)
  type: Directory
  outputBinding:
    glob: $(inputs.in_default_will_place)
cwlVersion: v1.1
baseCommand:
- findTADsAndLoops.pl
