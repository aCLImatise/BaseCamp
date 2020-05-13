class: CommandLineTool
id: findTADsAndLoopsFromRelMatrix.cwl
inputs:
- id: mint_ad_score
  doc: '<#> (minimum inclusion ratio i.e. intra-TAD interactions vs. inter-TAD interaction,
    def: 1.75)'
  type: boolean
  inputBinding:
    prefix: -minTADscore
- id: mint_ad_size
  doc: '<#> (minimum TAD size, default: 100000)'
  type: boolean
  inputBinding:
    prefix: -minTADsize
- id: size_tad_optima
  doc: '<#> (window size to look for local optima, default: 5xresolution)'
  type: boolean
  inputBinding:
    prefix: -sizeTADoptima
- id: no_overlap
  doc: (remove overlapping TADs if they overlap more than 0.20 - keep best one)
  type: boolean
  inputBinding:
    prefix: -noOverlap
- id: no_overlap_strict
  doc: (remove overlapping TADs if they overlap at all - keep best one)
  type: boolean
  inputBinding:
    prefix: -noOverlapStrict
- id: skip_tads
  doc: (don't find TADs)
  type: boolean
  inputBinding:
    prefix: -skipTADs
- id: min_loop_dist
  doc: <#> (minimum interaction length for loops)
  type: boolean
  inputBinding:
    prefix: -minLoopDist
- id: anchor_size
  doc: <#> (size of loop anchor region to count interactions, default 5x res)
  type: boolean
  inputBinding:
    prefix: -anchorSize
- id: anchor_local_bg_size
  doc: <#> (size of region near loop anchors to calculate background, default 15x
    res)
  type: boolean
  inputBinding:
    prefix: -anchorLocalBgSize
- id: fold_local_bg
  doc: '<#> (local fold threshold for interaction for loops, def: 1.5)'
  type: boolean
  inputBinding:
    prefix: -foldLocalBg
- id: fold_global_bg
  doc: '<#> (global fold threshold [vs. avg interactions per distance] for loops,
    def: 2.0)'
  type: boolean
  inputBinding:
    prefix: -foldGlobalBg
- id: poisson_local_bg
  doc: '<#> (maximum poisson p-value for loop interactions vs. local background, def:
    1e-5)'
  type: boolean
  inputBinding:
    prefix: -poissonLocalBg
- id: poisson_global_bg
  doc: '<#> (maximum poisson p-value for loop interactions vs. similar distance background,
    def: 1e-5)'
  type: boolean
  inputBinding:
    prefix: -poissonGlobalBg
- id: min_loop_reads
  doc: '<#> (minimum number of interaction reads for loops, default: automatic)'
  type: boolean
  inputBinding:
    prefix: -minLoopReads
- id: skip_loops
  doc: (don't find loops/anchors)
  type: boolean
  inputBinding:
    prefix: -skipLoops
- id: matrix
  doc: '[relative file2] ... (relative matricies to use for scoring)'
  type: string
  inputBinding:
    prefix: -matrix
- id: prefix
  doc: '(Filename prefix for output files, default: out)'
  type: File
  inputBinding:
    prefix: -prefix
- id: tad
  doc: (score TAD on inclusion ratio)
  type: string
  inputBinding:
    prefix: -tad
- id: loop
  doc: (score interactions found at loops)
  type: string
  inputBinding:
    prefix: -loop
- id: mind_ist
  doc: '<#> (minimum contact distance to score (to avoid diagonal) default: 3 x res)'
  type: boolean
  inputBinding:
    prefix: -minDist
outputs: []
cwlVersion: v1.1
baseCommand:
- findTADsAndLoopsFromRelMatrix
