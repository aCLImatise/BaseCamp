class: CommandLineTool
id: amap.cwl
inputs:
- id: clustalw
  doc: use CLUSTALW output format instead of MFA
  type: boolean
  inputBinding:
    prefix: -clustalw
- id: consistency
  doc: 'use 0 <= REPS <= 5 (default: 0) passes of consistency transformation'
  type: string
  inputBinding:
    prefix: --consistency
- id: iterative_refinement
  doc: 'use 0 <= REPS <= 1000 (default: 0) passes of iterative-refinement'
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
- id: gap_factor
  doc: 'use GF as the gap-factor parameter, set to 0 for best sensitivity, higher
    values for better specificity (default: 1)'
  type: string
  inputBinding:
    prefix: --gap-factor
- id: edge_weight_threshold
  doc: 'stop the sequence annealing process when best edge has lower weight than W,
    set to 0 for best sensitivity, higher values for better specificity (default:
    0)'
  type: string
  inputBinding:
    prefix: --edge-weight-threshold
- id: progressive
  doc: 'use progresive alignment instead of sequence annealing alignment (default:
    off)'
  type: boolean
  inputBinding:
    prefix: --progressive
- id: no_edge_reordering
  doc: 'disable reordring of edges during sequence annealing alignment (default: off)'
  type: boolean
  inputBinding:
    prefix: --no-edge-reordering
- id: use_max_step_size
  doc: 'use maximum improvement step size instead of tGf edge ranking (default: off)'
  type: boolean
  inputBinding:
    prefix: --use-max-stepsize
- id: print_posteriors
  doc: 'only print the posterior probability matrices (default: off)'
  type: boolean
  inputBinding:
    prefix: --print-posteriors
- id: gui
  doc: '[START] [STEP] print output for the AMAP Display Java based GUI (default:
    off)  starting at weight START (default: infinity) with step size STEP (default:
    1)'
  type: boolean
  inputBinding:
    prefix: -gui
outputs: []
cwlVersion: v1.1
baseCommand:
- amap
