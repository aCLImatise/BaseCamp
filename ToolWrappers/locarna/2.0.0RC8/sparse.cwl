class: CommandLineTool
id: sparse.cwl
inputs:
- id: in_galaxy_xml
  doc: Print galaxy xml wrapper.
  type: boolean
  inputBinding:
    prefix: --galaxy-xml
- id: in_verbose
  doc: Be verbose. Prints input parameters, sequences and size information.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Be quiet.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_in_del
  doc: "(-150)\nIndel score. Score contribution of each single base insertion or\n\
    deletion. Indel opening score and indel score define the affine scoring\nof gaps."
  type: long
  inputBinding:
    prefix: --indel
- id: in_in_del_loop
  doc: "(-300)\nScore for insertions and deletions of loops per base"
  type: long
  inputBinding:
    prefix: --indel-loop
- id: in_in_del_opening
  doc: "(-750)\nIndel opening score. Score contribution of opening an insertion or\n\
    deletion, i.e. score for a consecutive run of deletions or insertions.\nIndel\
    \ opening score and indel score define the affine scoring of gaps."
  type: long
  inputBinding:
    prefix: --indel-opening
- id: in_in_del_opening_loop
  doc: "(-900)\nOpening score for insertions and deletions of loops"
  type: long
  inputBinding:
    prefix: --indel-opening-loop
- id: in_ribo_sum_file
  doc: "(RIBOSUM85_60)\nFile specifying the Ribosum base and base-pair similarities.\
    \ [default:\nuse RIBOSUM85_60 without requiring a Ribosum file.]"
  type: File
  inputBinding:
    prefix: --ribosum-file
- id: in_use_ribo_sum
  doc: "(true)\nUse ribosum scores for scoring base matches and base pair matches;\
    \ note\nthat tau=0 suppresses any effect on the latter."
  type: boolean
  inputBinding:
    prefix: --use-ribosum
- id: in_match
  doc: "(50)\nSet score contribution of a base match (unless ribosum scoring)."
  type: long
  inputBinding:
    prefix: --match
- id: in_mismatch
  doc: "(0)\nSet score contribution of a base mismatch (unless ribosum scoring)."
  type: long
  inputBinding:
    prefix: --mismatch
- id: in_unpaired_penalty
  doc: "(0)\nPenalty for unpaired bases"
  type: long
  inputBinding:
    prefix: --unpaired-penalty
- id: in_struct_weight
  doc: "(200)\nMaximal weight of 1/2 arc match. Balances structure vs. sequence score\n\
    contributions."
  type: long
  inputBinding:
    prefix: --struct-weight
- id: in_exp_prob
  doc: "Expected base pair probability. Used as background probability for base\n\
    pair scoring [default: calculated from sequence length]."
  type: long
  inputBinding:
    prefix: --exp-prob
- id: in_tau
  doc: "(100)\nTau factor. Factor for contribution of sequence similarity in an arc\n\
    match (in percent). tau=0 does not penalize any sequence information\nincluding\
    \ compensatory mutations at arc matches, while tau=100 scores\nsequence similarity\
    \ at ends of base matches (if a scoring matrix like\nribosum is used, this adds\
    \ the contributions for base pair match from the\nmatrix). [default tau=0!]"
  type: long
  inputBinding:
    prefix: --tau
- id: in_exclusion
  doc: "(0)\nScore contribution per exclusion in structure local alignment. Set to\n\
    zero for unrestricted structure locality."
  type: long
  inputBinding:
    prefix: --exclusion
- id: in_stacking
  doc: Use stacking terms (requires stack-probs by RNAfold -p2)
  type: boolean
  inputBinding:
    prefix: --stacking
- id: in_new_stacking
  doc: Use new stacking terms (requires stack-probs by RNAfold -p2)
  type: boolean
  inputBinding:
    prefix: --new-stacking
- id: in_extended_pf
  doc: "Use extended precision for the computation of sequence envelopes. This\nenables\
    \ handling significantly larger instances. [default]"
  type: boolean
  inputBinding:
    prefix: --extended-pf
- id: in_quad_pf
  doc: "Use quad precision for partition function values. Even more precision\nthan\
    \ extended pf, but usually much slower (overrides extended-pf)."
  type: boolean
  inputBinding:
    prefix: --quad-pf
- id: in_width
  doc: "(120)\nWidth of alignment output."
  type: long
  inputBinding:
    prefix: --width
- id: in_clustal
  doc: Write alignment in ClustalW (aln) format to given file.
  type: File
  inputBinding:
    prefix: --clustal
- id: in_stockholm
  doc: Write alignment Stockholm format to given file.
  type: File
  inputBinding:
    prefix: --stockholm
- id: in_pp
  doc: Write alignment in PP format to given file.
  type: File
  inputBinding:
    prefix: --pp
- id: in_ali_fold_consensus_dp
  doc: "Compute consensus dot plot by alifold (warning: this may fail for long\nsequences)."
  type: boolean
  inputBinding:
    prefix: --alifold-consensus-dp
- id: in_consensus_structure
  doc: "(alifold)\nType of consensus structures written to screen and stockholm output\n\
    [alifold|mea|none] (default: none)."
  type: string
  inputBinding:
    prefix: --consensus-structure
- id: in_consensus_gamma
  doc: "(1.0)\nBase pair weight for mea consensus computation. For MEA, base pairs\
    \ are\nscored by their pair probability times 2 gamma; unpaired bases, by their\n\
    unpaired probability."
  type: double
  inputBinding:
    prefix: --consensus-gamma
- id: in_local_output
  doc: Output only local sub-alignment (to std out).
  type: boolean
  inputBinding:
    prefix: --local-output
- id: in_local_file_output
  doc: Write only local sub-alignment to output files.
  type: File
  inputBinding:
    prefix: --local-file-output
- id: in_pos_output
  doc: Output only local sub-alignment positions.
  type: boolean
  inputBinding:
    prefix: --pos-output
- id: in_write_structure
  doc: Write guidance structure in output.
  type: boolean
  inputBinding:
    prefix: --write-structure
- id: in_special_gap_symbols
  doc: "Special distinct gap symbols for loop gaps or gaps caused by\nsparsification"
  type: boolean
  inputBinding:
    prefix: --special-gap-symbols
- id: in_stopwatch
  doc: Print run time informations.
  type: boolean
  inputBinding:
    prefix: --stopwatch
- id: in_min_prob
  doc: "(0.001)\nMinimal probability. Only base pairs of at least this probability\
    \ are\ntaken into account."
  type: long
  inputBinding:
    prefix: --min-prob
- id: in_prob_unpaired_in_loop_threshold
  doc: "(0.00005)\nThreshold for prob_unpaired_in_loop"
  type: double
  inputBinding:
    prefix: --prob-unpaired-in-loop-threshold
- id: in_prob_base_pair_in_loop_threshold
  doc: "(0.0001)\nThreshold for prob_basepair_in_loop"
  type: double
  inputBinding:
    prefix: --prob-basepair-in-loop-threshold
- id: in_max_bps_length_ratio
  doc: "(0.0)\nMaximal ratio of #base pairs divided by sequence length. This serves\
    \ as a\nsecond filter on the \"significant\" base pairs. [default: 0.0 = no\n\
    effect]."
  type: long
  inputBinding:
    prefix: --max-bps-length-ratio
- id: in_max_uil_length_ratio
  doc: "(0.0)\nMaximal ratio of #unpaired bases in loops divided by sequence length\n\
    (def: no effect)"
  type: long
  inputBinding:
    prefix: --max-uil-length-ratio
- id: in_max_bp_il_length_ratio
  doc: "(0.0)\nMaximal ratio of #base pairs in loops divided by loop length (def:\
    \ no\neffect)"
  type: long
  inputBinding:
    prefix: --max-bpil-length-ratio
- id: in_max_diff_am
  doc: "(-1)\nMaximal difference for sizes of matched arcs. [-1=off]"
  type: long
  inputBinding:
    prefix: --max-diff-am
- id: in_max_diff
  doc: "(-1)\nMaximal difference for positions of alignment traces (and aligned bases).\n\
    [-1=off]"
  type: long
  inputBinding:
    prefix: --max-diff
- id: in_max_diff_at_am
  doc: "(-1)\nMaximal difference for positions of alignment traces at arc match ends.\n\
    [-1=off]"
  type: long
  inputBinding:
    prefix: --max-diff-at-am
- id: in_max_diff_aln
  doc: "()\nMaximal difference relative to given alignment (file in clustalw format)"
  type: File
  inputBinding:
    prefix: --max-diff-aln
- id: in_max_diff_pw_aln
  doc: "()\nMaximal difference relative to given alignment (string, delim=AMPERSAND)"
  type: long
  inputBinding:
    prefix: --max-diff-pw-aln
- id: in_max_diff_relax
  doc: Relax deviation constraints in multiple aligmnent
  type: boolean
  inputBinding:
    prefix: --max-diff-relax
- id: in_min_trace_probability
  doc: "(1e-5)\nMinimal sequence alignment probability of potential traces\n(probability-based\
    \ sequence alignment envelope) [default=1e-4]."
  type: long
  inputBinding:
    prefix: --min-trace-probability
- id: in_me_a_alignment
  doc: "Perform maximum expected accuracy alignment (instead of using the default\n\
    similarity scoring)."
  type: boolean
  inputBinding:
    prefix: --mea-alignment
- id: in_match_prob_method
  doc: "(0)\nSelect method for computing sequence-based base match probablities (to\
    \ be\nused for mea-type alignment scores). Methods: 1=probcons-style from HMM,\n\
    2=probalign-style from PFs, 3=from PFs, local"
  type: long
  inputBinding:
    prefix: --match-prob-method
- id: in_prob_cons_file
  doc: "Read parameters for probcons-like calculation of match probabilities from\n\
    probcons parameter file."
  type: File
  inputBinding:
    prefix: --probcons-file
- id: in_temperature_ali_pf
  doc: "(300)\nTemperature for the /sequence alignment/ partition functions used by\
    \ the\nprobcons-like sequence-based match/trace probability computation (this\n\
    temperature is different from the 'physical' temperature of RNA\nfolding!)."
  type: long
  inputBinding:
    prefix: --temperature-alipf
- id: in_pf_struct_weight
  doc: "(200)\nStructure weight in PF computations (for the computation of\nsequence-based\
    \ match probabilties from partition functions)."
  type: long
  inputBinding:
    prefix: --pf-struct-weight
- id: in_me_a_gap_cost
  doc: Use gap cost in mea alignment
  type: boolean
  inputBinding:
    prefix: --mea-gapcost
- id: in_me_a_alpha
  doc: "(0)\nWeight alpha for MEA"
  type: long
  inputBinding:
    prefix: --mea-alpha
- id: in_me_a_beta
  doc: "(200)\nWeight beta for MEA"
  type: long
  inputBinding:
    prefix: --mea-beta
- id: in_me_a_gamma
  doc: "(100)\nWeight gamma for MEA"
  type: long
  inputBinding:
    prefix: --mea-gamma
- id: in_probability_scale
  doc: "(10000)\nScale for probabilities/resolution of mea score"
  type: long
  inputBinding:
    prefix: --probability-scale
- id: in_write_match_probs
  doc: Write match probs to file (don't align!).
  type: File
  inputBinding:
    prefix: --write-match-probs
- id: in_read_match_probs
  doc: Read match probabilities from file.
  type: File
  inputBinding:
    prefix: --read-match-probs
- id: in_write_arc_match_scores
  doc: Write arcmatch scores (don't align!)
  type: File
  inputBinding:
    prefix: --write-arcmatch-scores
- id: in_read_arc_match_scores
  doc: Read arcmatch scores.
  type: File
  inputBinding:
    prefix: --read-arcmatch-scores
- id: in_read_arc_match_probs
  doc: Read arcmatch probabilities (weighted by factor mea_beta/100)
  type: File
  inputBinding:
    prefix: --read-arcmatch-probs
- id: in_no_lp
  doc: Disallow lonely pairs in prediction and alignment.
  type: boolean
  inputBinding:
    prefix: --noLP
- id: in_max_bp_span
  doc: "(-1)\nLimit maximum base pair span [default=off]."
  type: long
  inputBinding:
    prefix: --maxBPspan
- id: in_relaxed_anchors
  doc: Use relaxed semantics of anchor constraints [default=strict semantics].
  type: boolean
  inputBinding:
    prefix: --relaxed-anchors
- id: in_constraints_dot
  doc: Report bugs to <miladim (at) informatik.uni-freiburg.de>.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_local_file_output
  doc: Write only local sub-alignment to output files.
  type: File
  outputBinding:
    glob: $(inputs.in_local_file_output)
cwlVersion: v1.1
baseCommand:
- sparse
