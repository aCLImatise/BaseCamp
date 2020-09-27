class: CommandLineTool
id: findTADsAndLoopsFromRelMatrix.cwl
inputs:
- id: in_prefix
  doc: '(Filename prefix for output files, default: out)'
  type: File
  inputBinding:
    prefix: -prefix
- id: in_mind_ist
  doc: '<#> (minimum interaction distance to score (to avoid diagonal) default: 3
    x res)'
  type: boolean
  inputBinding:
    prefix: -minDist
- id: in_did_ist
  doc: <#> (Distance used to calculate directionality index, default 1000000)
  type: boolean
  inputBinding:
    prefix: -diDist
- id: in_ins_dist
  doc: <#> (maximum length of interactions used to insulation ratio, default 200000)
  type: boolean
  inputBinding:
    prefix: -insDist
- id: in_mint_ad_score
  doc: '<#> (minimum inclusion ratio i.e. intra-TAD interactions vs. inter-TAD interaction,
    def: 1.75)'
  type: boolean
  inputBinding:
    prefix: -minTADscore
- id: in_mint_ad_size
  doc: '<#> (minimum TAD size, default: 100000)'
  type: boolean
  inputBinding:
    prefix: -minTADsize
- id: in_size_tad_optima
  doc: '<#> (window size to look for local optima, default: 5xresolution)'
  type: boolean
  inputBinding:
    prefix: -sizeTADoptima
- id: in_no_overlap
  doc: (remove overlapping TADs if they overlap more than 0.20 - keep best one)
  type: boolean
  inputBinding:
    prefix: -noOverlap
- id: in_no_overlap_strict
  doc: (remove overlapping TADs if they overlap at all - keep best one)
  type: boolean
  inputBinding:
    prefix: -noOverlapStrict
- id: in_skip_tads
  doc: (don't find TADs)
  type: boolean
  inputBinding:
    prefix: -skipTADs
- id: in_min_loop_dist
  doc: <#> (minimum interaction length for loops)
  type: boolean
  inputBinding:
    prefix: -minLoopDist
- id: in_anchor_size
  doc: <#> (size of loop anchor region to count interactions, default 5x res)
  type: boolean
  inputBinding:
    prefix: -anchorSize
- id: in_anchor_local_bg_size
  doc: <#> (size of region near loop anchors to calculate background, default 15x
    res)
  type: boolean
  inputBinding:
    prefix: -anchorLocalBgSize
- id: in_fold_local_bg
  doc: '<#> (local fold threshold for interaction for loops, def: 1.5)'
  type: boolean
  inputBinding:
    prefix: -foldLocalBg
- id: in_fold_global_bg
  doc: '<#> (global fold threshold [vs. avg interactions per distance] for loops,
    def: 2.0)'
  type: boolean
  inputBinding:
    prefix: -foldGlobalBg
- id: in_poisson_local_bg
  doc: '<#> (maximum poisson p-value for loop interactions vs. local background, def:
    1e-5)'
  type: boolean
  inputBinding:
    prefix: -poissonLocalBg
- id: in_poisson_global_bg
  doc: '<#> (maximum poisson p-value for loop interactions vs. similar distance background,
    def: 1e-5)'
  type: boolean
  inputBinding:
    prefix: -poissonGlobalBg
- id: in_min_loop_reads
  doc: '<#> (minimum number of interaction reads for loops, default: automatic)'
  type: boolean
  inputBinding:
    prefix: -minLoopReads
- id: in_skip_loops
  doc: (don't find loops/anchors)
  type: boolean
  inputBinding:
    prefix: -skipLoops
- id: in_matrix
  doc: '[relative file2] ... (relative matricies to use for scoring)'
  type: File
  inputBinding:
    prefix: -matrix
- id: in_tad
  doc: (score TAD on inclusion ratio)
  type: File
  inputBinding:
    prefix: -tad
- id: in_loop
  doc: (score interactions found at loops)
  type: File
  inputBinding:
    prefix: -loop
- id: in_cmd
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: '(Filename prefix for output files, default: out)'
  type: File
  outputBinding:
    glob: $(inputs.in_prefix)
cwlVersion: v1.1
baseCommand:
- findTADsAndLoopsFromRelMatrix
