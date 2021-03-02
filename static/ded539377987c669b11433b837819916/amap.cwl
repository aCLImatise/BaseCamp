class: CommandLineTool
id: amap.cwl
inputs:
- id: in_clustalw
  doc: use CLUSTALW output format instead of MFA
  type: boolean?
  inputBinding:
    prefix: -clustalw
- id: in_consistency
  doc: 'use 0 <= REPS <= 5 (default: 0) passes of consistency transformation'
  type: long?
  inputBinding:
    prefix: --consistency
- id: in_iterative_refinement
  doc: 'use 0 <= REPS <= 1000 (default: 0) passes of iterative-refinement'
  type: long?
  inputBinding:
    prefix: --iterative-refinement
- id: in_pre_training
  doc: 'use 0 <= REPS <= 20 (default: 0) rounds of pretraining'
  type: long?
  inputBinding:
    prefix: --pre-training
- id: in_pairs
  doc: generate all-pairs pairwise alignments
  type: boolean?
  inputBinding:
    prefix: -pairs
- id: in_viterbi
  doc: use Viterbi algorithm to generate all pairs (automatically enables -pairs)
  type: boolean?
  inputBinding:
    prefix: -viterbi
- id: in_verbose
  doc: 'report progress while aligning (default: off)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_an_not
  doc: write annotation for multiple alignment to FILENAME
  type: File?
  inputBinding:
    prefix: -annot
- id: in_train
  doc: 'compute EM transition probabilities, store in FILENAME (default: no training)'
  type: File?
  inputBinding:
    prefix: --train
- id: in_emissions
  doc: 'also reestimate emission probabilities (default: off)'
  type: boolean?
  inputBinding:
    prefix: --emissions
- id: in_param_file
  doc: 'read parameters from FILENAME (default: )'
  type: File?
  inputBinding:
    prefix: --paramfile
- id: in_alignment_order
  doc: 'print sequences in alignment order rather than input order (default: off)'
  type: boolean?
  inputBinding:
    prefix: --alignment-order
- id: in_gap_factor
  doc: 'use GF as the gap-factor parameter, set to 0 for best sensitivity, higher
    values for better specificity (default: 1)'
  type: long?
  inputBinding:
    prefix: --gap-factor
- id: in_edge_weight_threshold
  doc: "stop the sequence annealing process when best edge has lower weight than W,\n\
    set to 0 for best sensitivity, higher values for better specificity (default:\
    \ 0)"
  type: long?
  inputBinding:
    prefix: --edge-weight-threshold
- id: in_progressive
  doc: 'use progresive alignment instead of sequence annealing alignment (default:
    off)'
  type: boolean?
  inputBinding:
    prefix: --progressive
- id: in_no_edge_reordering
  doc: 'disable reordring of edges during sequence annealing alignment (default: off)'
  type: boolean?
  inputBinding:
    prefix: --no-edge-reordering
- id: in_use_max_step_size
  doc: 'use maximum improvement step size instead of tGf edge ranking (default: off)'
  type: boolean?
  inputBinding:
    prefix: --use-max-stepsize
- id: in_print_posteriors
  doc: 'only print the posterior probability matrices (default: off)'
  type: boolean?
  inputBinding:
    prefix: --print-posteriors
- id: in_gui
  doc: "[START] [STEP]\nprint output for the AMAP Display Java based GUI (default:\
    \ off)\nstarting at weight START (default: infinity) with step size STEP (default:\
    \ 1)\n"
  type: boolean?
  inputBinding:
    prefix: -gui
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- amap
