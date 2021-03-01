class: CommandLineTool
id: locarna_p.cwl
inputs:
- id: in_verbose
  doc: Be verbose. Prints input parameters, sequences and size information.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Be quiet.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_in_del
  doc: "(-150)\nIndel score. Score contribution of each single base insertion or\n\
    deletion. Indel opening score and indel score define the affine scoring\nof gaps."
  type: long?
  inputBinding:
    prefix: --indel
- id: in_in_del_opening
  doc: "(-750)\nIndel opening score. Score contribution of opening an insertion or\n\
    deletion, i.e. score for a consecutive run of deletions or insertions.\nIndel\
    \ opening score and indel score define the affine scoring of gaps."
  type: long?
  inputBinding:
    prefix: --indel-opening
- id: in_ribo_sum_file
  doc: "(RIBOSUM85_60)\nFile specifying the Ribosum base and base-pair similarities.\
    \ [default:\nuse RIBOSUM85_60 without requiring a Ribosum file.]"
  type: File?
  inputBinding:
    prefix: --ribosum-file
- id: in_use_ribo_sum
  doc: "(true)\nUse ribosum scores for scoring base matches and base pair matches;\
    \ note\nthat tau=0 suppresses any effect on the latter."
  type: boolean?
  inputBinding:
    prefix: --use-ribosum
- id: in_match
  doc: "(50)\nSet score contribution of a base match (unless ribosum scoring)."
  type: long?
  inputBinding:
    prefix: --match
- id: in_mismatch
  doc: "(0)\nSet score contribution of a base mismatch (unless ribosum scoring)."
  type: long?
  inputBinding:
    prefix: --mismatch
- id: in_struct_weight
  doc: "(200)\nMaximal weight of 1/2 arc match. Balances structure vs. sequence score\n\
    contributions."
  type: long?
  inputBinding:
    prefix: --struct-weight
- id: in_exp_prob
  doc: "Expected base pair probability. Used as background probability for base\n\
    pair scoring [default: calculated from sequence length]."
  type: long?
  inputBinding:
    prefix: --exp-prob
- id: in_tau
  doc: "(50)\nTau factor. Factor for contribution of sequence similarity in an arc\n\
    match (in percent). tau=0 does not penalize any sequence information\nincluding\
    \ compensatory mutations at arc matches, while tau=100 scores\nsequence similarity\
    \ at ends of base matches (if a scoring matrix like\nribosum is used, this adds\
    \ the contributions for base pair match from the\nmatrix). [default tau=0!]"
  type: long?
  inputBinding:
    prefix: --tau
- id: in_temperature_ali_pf
  doc: "(300)\nTemperature for the /sequence alignment/ partition functions used by\
    \ the\nprobcons-like sequence-based match/trace probability computation (this\n\
    temperature is different from the 'physical' temperature of RNA\nfolding!)."
  type: long?
  inputBinding:
    prefix: --temperature-alipf
- id: in_pf_scale
  doc: "(1.0)\nFactor for scaling the partition functions. Use in order to avoid\n\
    overflow."
  type: double?
  inputBinding:
    prefix: --pf-scale
- id: in_extended_pf
  doc: "Use extended precision for partition function values. This increases\nrun-time\
    \ and space (less than 2x), however enables handling significantly\nlarger instances."
  type: boolean?
  inputBinding:
    prefix: --extended-pf
- id: in_quad_pf
  doc: "Use quad precision for partition function values. Even more precision\nthan\
    \ extended pf, but usually much slower (overrides extended-pf)."
  type: boolean?
  inputBinding:
    prefix: --quad-pf
- id: in_write_arc_match_probs
  doc: Write arcmatch probabilities
  type: File?
  inputBinding:
    prefix: --write-arcmatch-probs
- id: in_write_base_match_probs
  doc: Write basematch probabilities
  type: File?
  inputBinding:
    prefix: --write-basematch-probs
- id: in_min_am_prob
  doc: "(0.001)\nMinimal arc match probability. Write probabilities for only the arc\n\
    matchs of at least this probability."
  type: long?
  inputBinding:
    prefix: --min-am-prob
- id: in_min_bm_prob
  doc: "(0.001)\nMinimal base match probability. Write probabilities for only the\
    \ base\nmatchs of at least this probability."
  type: long?
  inputBinding:
    prefix: --min-bm-prob
- id: in_include_am_in_bm
  doc: Include arc match cases in base match probabilities
  type: boolean?
  inputBinding:
    prefix: --include-am-in-bm
- id: in_stopwatch
  doc: Print run time informations.
  type: boolean?
  inputBinding:
    prefix: --stopwatch
- id: in_min_prob
  doc: "(0.001)\nMinimal probability. Only base pairs of at least this probability\
    \ are\ntaken into account."
  type: long?
  inputBinding:
    prefix: --min-prob
- id: in_max_bps_length_ratio
  doc: "(0.0)\nMaximal ratio of #base pairs divided by sequence length. This serves\
    \ as a\nsecond filter on the \"significant\" base pairs. [default: 0.0 = no\n\
    effect]."
  type: long?
  inputBinding:
    prefix: --max-bps-length-ratio
- id: in_max_diff_am
  doc: "(-1)\nMaximal difference for sizes of matched arcs. [-1=off]"
  type: long?
  inputBinding:
    prefix: --max-diff-am
- id: in_max_diff
  doc: "(-1)\nMaximal difference for positions of alignment traces (and aligned bases).\n\
    [-1=off]"
  type: long?
  inputBinding:
    prefix: --max-diff
- id: in_max_diff_at_am
  doc: "(-1)\nMaximal difference for positions of alignment traces at arc match ends.\n\
    [-1=off]"
  type: long?
  inputBinding:
    prefix: --max-diff-at-am
- id: in_max_diff_aln
  doc: "()\nMaximal difference relative to given alignment (file in clustalw format)"
  type: File?
  inputBinding:
    prefix: --max-diff-aln
- id: in_max_diff_pw_aln
  doc: "()\nMaximal difference relative to given alignment (string, delim=AMPERSAND)"
  type: long?
  inputBinding:
    prefix: --max-diff-pw-aln
- id: in_max_diff_relax
  doc: Relax deviation constraints in multiple aligmnent
  type: boolean?
  inputBinding:
    prefix: --max-diff-relax
- id: in_min_trace_probability
  doc: "(1e-5)\nMinimal sequence alignment probability of potential traces\n(probability-based\
    \ sequence alignment envelope) [default=1e-4]."
  type: long?
  inputBinding:
    prefix: --min-trace-probability
- id: in_fragment_match_probs
  doc: "=<\"i j k l\">()\nRequests probabilities for the match of fragments [i..j]\
    \ and [k..l].\nAccepts a ';' separated list of ranges."
  type: boolean?
  inputBinding:
    prefix: --fragment-match-probs
- id: in_max_bp_span
  doc: "(-1)\nLimit maximum base pair span [default=off]."
  type: long?
  inputBinding:
    prefix: --maxBPspan
- id: in_relaxed_anchors
  doc: Use relaxed semantics of anchor constraints [default=strict semantics].
  type: boolean?
  inputBinding:
    prefix: --relaxed-anchors
- id: in_constraints_dot
  doc: Report bugs to <will (at) informatik.uni-freiburg.de>.
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
- locarna_p
