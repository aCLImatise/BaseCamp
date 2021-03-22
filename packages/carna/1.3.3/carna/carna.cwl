class: CommandLineTool
id: carna.cwl
inputs:
- id: in_match
  doc: "(50)\nMatch score"
  type: long?
  inputBinding:
    prefix: --match
- id: in_mismatch
  doc: "(0)\nMismatch score"
  type: long?
  inputBinding:
    prefix: --mismatch
- id: in_ribo_sum_file
  doc: "(RIBOSUM85_60)\nRibosum file"
  type: File?
  inputBinding:
    prefix: --ribosum-file
- id: in_use_ribo_sum
  doc: "(true)\nUse ribosum scores"
  type: boolean?
  inputBinding:
    prefix: --use-ribosum
- id: in_in_del
  doc: "(-350)\nIndel score"
  type: long?
  inputBinding:
    prefix: --indel
- id: in_in_del_opening
  doc: "(-500)\nIndel opening score"
  type: long?
  inputBinding:
    prefix: --indel-opening
- id: in_struct_weight
  doc: "(200)\nMaximal weight of 1/2 arc match"
  type: long?
  inputBinding:
    prefix: --struct-weight
- id: in_exp_prob
  doc: Expected probability
  type: string?
  inputBinding:
    prefix: --exp-prob
- id: in_tau
  doc: "(0)\nTau factor in percent"
  type: long?
  inputBinding:
    prefix: --tau
- id: in_gist
  doc: Use gist for graphical search (feature disabled, recompile to activate).
  type: boolean?
  inputBinding:
    prefix: --gist
- id: in_width
  doc: "(120)\nOutput width"
  type: long?
  inputBinding:
    prefix: --width
- id: in_clustal
  doc: Clustal output
  type: File?
  inputBinding:
    prefix: --clustal
- id: in_pp
  doc: PP output
  type: File?
  inputBinding:
    prefix: --pp
- id: in_write_structure
  doc: Write guidance structure in output
  type: boolean?
  inputBinding:
    prefix: --write-structure
- id: in_min_prob
  doc: "(0.01)\nMinimal probability"
  type: long?
  inputBinding:
    prefix: --min-prob
- id: in_max_bps_length_ratio
  doc: "(0.0)\nMaximal ratio of #base pairs divided by sequence length (default: no\n\
    effect)"
  type: long?
  inputBinding:
    prefix: --max-bps-length-ratio
- id: in_max_diff_am
  doc: "(-1)\nMaximal difference for sizes of matched arcs"
  type: long?
  inputBinding:
    prefix: --max-diff-am
- id: in_max_diff
  doc: "(-1)\nMaximal difference for alignment cuts"
  type: long?
  inputBinding:
    prefix: --max-diff
- id: in_max_diff_at_am
  doc: "(-1)\nMaximal difference for alignment traces, only at arc match positions"
  type: long?
  inputBinding:
    prefix: --max-diff-at-am
- id: in_no_lp
  doc: "No lonely pairs (only used when predicing ensemble porobabilities and for\n\
    compatibility with locarna; otherwise no effect)"
  type: boolean?
  inputBinding:
    prefix: --noLP
- id: in_max_bp_span
  doc: "(-1)\nLimit maximum base pair span (default=off)"
  type: long?
  inputBinding:
    prefix: --maxBPspan
- id: in_relaxed_anchors
  doc: Relax anchor constraints (default=off)
  type: boolean?
  inputBinding:
    prefix: --relaxed-anchors
- id: in_ignore_constraints
  doc: Ignore constraints in pp-file
  type: boolean?
  inputBinding:
    prefix: --ignore-constraints
- id: in_lb
  doc: Lower score bound
  type: string?
  inputBinding:
    prefix: --lb
- id: in_ub
  doc: Upper score bound
  type: string?
  inputBinding:
    prefix: --ub
- id: in_c_d
  doc: "(1)\nRecomputation distance"
  type: long?
  inputBinding:
    prefix: --c_d
- id: in_time_limit
  doc: "(300000)\nTime limit in ms (always search first solution; turn off by 0)."
  type: long?
  inputBinding:
    prefix: --time-limit
- id: in_verbose
  doc: 'RNA sequences and pair probabilities:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- carna
