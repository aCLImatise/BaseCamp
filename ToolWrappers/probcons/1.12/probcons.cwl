class: CommandLineTool
id: probcons.cwl
inputs:
- id: in_clustalw
  doc: use CLUSTALW output format instead of MFA
  type: boolean?
  inputBinding:
    prefix: -clustalw
- id: in_consistency
  doc: 'use 0 <= REPS <= 5 (default: 2) passes of consistency transformation'
  type: long?
  inputBinding:
    prefix: --consistency
- id: in_iterative_refinement
  doc: 'use 0 <= REPS <= 1000 (default: 100) passes of iterative-refinement'
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
  doc: "print sequences in alignment order rather than input order (default: off)\n"
  type: boolean?
  inputBinding:
    prefix: --alignment-order
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- probcons
