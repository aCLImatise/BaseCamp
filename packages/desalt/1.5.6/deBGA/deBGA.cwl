class: CommandLineTool
id: ../../../deBGA.cwl
inputs:
- id: in_minimum_length_valid
  doc: the minimum length of a valid Uni-MEM seed [21-28]
  type: long
  inputBinding:
    prefix: -k
- id: in_number_iterations_reseeding
  doc: the number of iterations of re-seeding [4]
  type: long
  inputBinding:
    prefix: -s
- id: in_minimum_interval_seeding
  doc: the minimum interval of seeding [5]
  type: long
  inputBinding:
    prefix: -i
- id: in_maximum_allowed_number
  doc: the maximum allowed number of hits per seed [300]
  type: long
  inputBinding:
    prefix: -n
- id: in_threshold_edit_distance
  doc: the threshold on the edit distance for early stop [0.05]
  type: long
  inputBinding:
    prefix: -c
- id: in_cl
  doc: the adjusted threshold on the edit distance for early stop [0.00]
  type: long
  inputBinding:
    prefix: --cl
- id: in_local
  doc: the local alignment option for confident alignment
  type: boolean
  inputBinding:
    prefix: --local
- id: in_local_match
  doc: the score for a matched base in the local alignment [1]
  type: long
  inputBinding:
    prefix: --local-match
- id: in_local_mismatch
  doc: the penalty for a mismatched base in the local alignment [4]
  type: long
  inputBinding:
    prefix: --local-mismatch
- id: in_local_gap_open
  doc: the penalty for a gap open in the local alignment [6]
  type: long
  inputBinding:
    prefix: --local-gap-open
- id: in_local_gap_extension
  doc: the penalty for gap extension in the local alignment [1]
  type: long
  inputBinding:
    prefix: --local-gap-extension
- id: in_stdout
  doc: '(default: not set) output alignments by stdout'
  type: boolean
  inputBinding:
    prefix: --stdout
- id: in_upper_limit_insert
  doc: the upper limit of insert size (only for pair-end reads) [700]
  type: long
  inputBinding:
    prefix: -u
- id: in_lower_limit_insert
  doc: the lower limit of insert size (only for pair-end reads) [300]
  type: long
  inputBinding:
    prefix: -f
- id: in_maximum_number_alignment
  doc: the maximum number of alignment output [20]
  type: long
  inputBinding:
    prefix: -o
- id: in_for_anchoring_alignment
  doc: the maximum number of alignment output for anchoring alignment [150]
  type: long
  inputBinding:
    prefix: -x
- id: in_maximum_allowed_read
  doc: the maximum allowed read length [512]
  type: long
  inputBinding:
    prefix: -l
- id: in_budget_singleend_alignment
  doc: the budget for single-end alignment [100]
  type: long
  inputBinding:
    prefix: -e
- id: in_the_number_threads
  doc: the number of threads [1]
  type: long
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- deBGA
