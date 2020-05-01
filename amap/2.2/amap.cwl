#!/usr/bin/env cwl-runner

baseCommand:
- amap
class: CommandLineTool
cwlVersion: v1.0
id: amap
inputs:
- doc: use CLUSTALW output format instead of MFA
  id: clustalw
  inputBinding:
    prefix: -clustalw
  type: boolean
- doc: 'use 0 <= REPS <= 5 (default: 0) passes of consistency transformation'
  id: consistency
  inputBinding:
    prefix: --consistency
  type: string
- doc: 'use 0 <= REPS <= 1000 (default: 0) passes of iterative-refinement'
  id: iterative_refinement
  inputBinding:
    prefix: --iterative-refinement
  type: string
- doc: 'use 0 <= REPS <= 20 (default: 0) rounds of pretraining'
  id: pre_training
  inputBinding:
    prefix: --pre-training
  type: string
- doc: generate all-pairs pairwise alignments
  id: pairs
  inputBinding:
    prefix: -pairs
  type: boolean
- doc: use Viterbi algorithm to generate all pairs (automatically enables -pairs)
  id: viterbi
  inputBinding:
    prefix: -viterbi
  type: boolean
- doc: 'report progress while aligning (default: off)'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: write annotation for multiple alignment to FILENAME
  id: an_not
  inputBinding:
    prefix: -annot
  type: File
- doc: 'compute EM transition probabilities, store in FILENAME (default: no training)'
  id: train
  inputBinding:
    prefix: --train
  type: File
- doc: 'also reestimate emission probabilities (default: off)'
  id: emissions
  inputBinding:
    prefix: --emissions
  type: boolean
- doc: 'read parameters from FILENAME (default: )'
  id: param_file
  inputBinding:
    prefix: --paramfile
  type: File
- doc: 'print sequences in alignment order rather than input order (default: off)'
  id: alignment_order
  inputBinding:
    prefix: --alignment-order
  type: boolean
- doc: 'use GF as the gap-factor parameter, set to 0 for best sensitivity, higher
    values for better specificity (default: 1)'
  id: gap_factor
  inputBinding:
    prefix: --gap-factor
  type: string
- doc: 'stop the sequence annealing process when best edge has lower weight than W,
    set to 0 for best sensitivity, higher values for better specificity (default:
    0)'
  id: edge_weight_threshold
  inputBinding:
    prefix: --edge-weight-threshold
  type: string
- doc: 'use progresive alignment instead of sequence annealing alignment (default:
    off)'
  id: progressive
  inputBinding:
    prefix: --progressive
  type: boolean
- doc: 'disable reordring of edges during sequence annealing alignment (default: off)'
  id: no_edge_reordering
  inputBinding:
    prefix: --no-edge-reordering
  type: boolean
- doc: 'use maximum improvement step size instead of tGf edge ranking (default: off)'
  id: use_max_step_size
  inputBinding:
    prefix: --use-max-stepsize
  type: boolean
- doc: 'only print the posterior probability matrices (default: off)'
  id: print_posteriors
  inputBinding:
    prefix: --print-posteriors
  type: boolean
- doc: '[START] [STEP] print output for the AMAP Display Java based GUI (default:
    off)  starting at weight START (default: infinity) with step size STEP (default:
    1)'
  id: gui
  inputBinding:
    prefix: -gui
  type: boolean
