#!/usr/bin/env cwl-runner

baseCommand:
- findTADsAndLoopsFromRelMatrix
class: CommandLineTool
cwlVersion: v1.0
id: findtadsandloopsfromrelmatrix
inputs:
- doc: '<#> (minimum inclusion ratio i.e. intra-TAD interactions vs. inter-TAD interaction,
    def: 1.75)'
  id: mint_ad_score
  inputBinding:
    prefix: -minTADscore
  type: boolean
- doc: '<#> (minimum TAD size, default: 100000)'
  id: mint_ad_size
  inputBinding:
    prefix: -minTADsize
  type: boolean
- doc: '<#> (window size to look for local optima, default: 5xresolution)'
  id: size_tad_optima
  inputBinding:
    prefix: -sizeTADoptima
  type: boolean
- doc: (remove overlapping TADs if they overlap more than 0.20 - keep best one)
  id: no_overlap
  inputBinding:
    prefix: -noOverlap
  type: boolean
- doc: (remove overlapping TADs if they overlap at all - keep best one)
  id: no_overlap_strict
  inputBinding:
    prefix: -noOverlapStrict
  type: boolean
- doc: (don't find TADs)
  id: skip_tads
  inputBinding:
    prefix: -skipTADs
  type: boolean
- doc: <#> (minimum interaction length for loops)
  id: min_loop_dist
  inputBinding:
    prefix: -minLoopDist
  type: boolean
- doc: <#> (size of loop anchor region to count interactions, default 5x res)
  id: anchor_size
  inputBinding:
    prefix: -anchorSize
  type: boolean
- doc: <#> (size of region near loop anchors to calculate background, default 15x
    res)
  id: anchor_local_bg_size
  inputBinding:
    prefix: -anchorLocalBgSize
  type: boolean
- doc: '<#> (local fold threshold for interaction for loops, def: 1.5)'
  id: fold_local_bg
  inputBinding:
    prefix: -foldLocalBg
  type: boolean
- doc: '<#> (global fold threshold [vs. avg interactions per distance] for loops,
    def: 2.0)'
  id: fold_global_bg
  inputBinding:
    prefix: -foldGlobalBg
  type: boolean
- doc: '<#> (maximum poisson p-value for loop interactions vs. local background, def:
    1e-5)'
  id: poisson_local_bg
  inputBinding:
    prefix: -poissonLocalBg
  type: boolean
- doc: '<#> (maximum poisson p-value for loop interactions vs. similar distance background,
    def: 1e-5)'
  id: poisson_global_bg
  inputBinding:
    prefix: -poissonGlobalBg
  type: boolean
- doc: '<#> (minimum number of interaction reads for loops, default: automatic)'
  id: min_loop_reads
  inputBinding:
    prefix: -minLoopReads
  type: boolean
- doc: (don't find loops/anchors)
  id: skip_loops
  inputBinding:
    prefix: -skipLoops
  type: boolean
- doc: '[relative file2] ... (relative matricies to use for scoring)'
  id: matrix
  inputBinding:
    prefix: -matrix
  type: string
- doc: '(Filename prefix for output files, default: out)'
  id: prefix
  inputBinding:
    prefix: -prefix
  type: File
- doc: (score TAD on inclusion ratio)
  id: tad
  inputBinding:
    prefix: -tad
  type: string
- doc: (score interactions found at loops)
  id: loop
  inputBinding:
    prefix: -loop
  type: string
- doc: '<#> (minimum contact distance to score (to avoid diagonal) default: 3 x res)'
  id: mind_ist
  inputBinding:
    prefix: -minDist
  type: boolean
