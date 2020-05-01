#!/usr/bin/env cwl-runner

baseCommand:
- probcons
class: CommandLineTool
cwlVersion: v1.0
id: probcons
inputs:
- doc: use CLUSTALW output format instead of MFA
  id: clustalw
  inputBinding:
    prefix: -clustalw
  type: boolean
- doc: 'use 0 <= REPS <= 5 (default: 2) passes of consistency transformation'
  id: consistency
  inputBinding:
    prefix: --consistency
  type: string
- doc: 'use 0 <= REPS <= 1000 (default: 100) passes of iterative-refinement'
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
