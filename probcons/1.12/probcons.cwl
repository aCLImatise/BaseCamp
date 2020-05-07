class: CommandLineTool
id: probcons.cwl
inputs:
- id: clustalw
  doc: use CLUSTALW output format instead of MFA
  type: boolean
  inputBinding:
    prefix: -clustalw
- id: consistency
  doc: 'use 0 <= REPS <= 5 (default: 2) passes of consistency transformation'
  type: string
  inputBinding:
    prefix: --consistency
- id: iterative_refinement
  doc: 'use 0 <= REPS <= 1000 (default: 100) passes of iterative-refinement'
  type: string
  inputBinding:
    prefix: --iterative-refinement
- id: pre_training
  doc: 'use 0 <= REPS <= 20 (default: 0) rounds of pretraining'
  type: string
  inputBinding:
    prefix: --pre-training
- id: pairs
  doc: generate all-pairs pairwise alignments
  type: boolean
  inputBinding:
    prefix: -pairs
- id: viterbi
  doc: use Viterbi algorithm to generate all pairs (automatically enables -pairs)
  type: boolean
  inputBinding:
    prefix: -viterbi
- id: verbose
  doc: 'report progress while aligning (default: off)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: an_not
  doc: write annotation for multiple alignment to FILENAME
  type: File
  inputBinding:
    prefix: -annot
- id: train
  doc: 'compute EM transition probabilities, store in FILENAME (default: no training)'
  type: File
  inputBinding:
    prefix: --train
- id: emissions
  doc: 'also reestimate emission probabilities (default: off)'
  type: boolean
  inputBinding:
    prefix: --emissions
- id: param_file
  doc: 'read parameters from FILENAME (default: )'
  type: File
  inputBinding:
    prefix: --paramfile
- id: alignment_order
  doc: 'print sequences in alignment order rather than input order (default: off)'
  type: boolean
  inputBinding:
    prefix: --alignment-order
outputs: []
cwlVersion: v1.1
baseCommand:
- probcons
