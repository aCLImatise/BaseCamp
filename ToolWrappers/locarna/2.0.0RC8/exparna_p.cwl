class: CommandLineTool
id: exparna_p.cwl
inputs:
- id: in_verbose
  doc: Verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Quiet
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_no_stacking
  doc: Do not use stacking terms (otherwise needs stacking probs by RNAfold -p2)
  type: boolean
  inputBinding:
    prefix: --no-stacking
- id: in_alpha_one
  doc: "(1)\nMultiplier for sequential score"
  type: long
  inputBinding:
    prefix: --alpha_1
- id: in_alpha_two
  doc: "(5)\nMultiplier for structural score"
  type: long
  inputBinding:
    prefix: --alpha_2
- id: in_alpha_three
  doc: "(5)\nMultiplier for stacking score, 0 means no stacking contribution"
  type: long
  inputBinding:
    prefix: --alpha_3
- id: in_struct_mismatch_score
  doc: "(-10)\nScore for a structural mismatch (nucleotide mismatch in an arcmatch)"
  type: long
  inputBinding:
    prefix: --struct-mismatch-score
- id: in_min_prob
  doc: "(0.01)\nMinimal probability"
  type: long
  inputBinding:
    prefix: --min-prob
- id: in_max_bps_length_ratio
  doc: "(0.0)\nMaximal ratio of #base pairs divided by sequence length (default: no\n\
    effect)"
  type: long
  inputBinding:
    prefix: --max-bps-length-ratio
- id: in_max_uil_length_ratio
  doc: "(0.0)\nMaximal ratio of #unpaired bases in loops divided by sequence length\n\
    (default: no effect)"
  type: long
  inputBinding:
    prefix: --max-uil-length-ratio
- id: in_max_bp_il_length_ratio
  doc: "(0.0)\nMaximal ratio of #base pairs in loops divided by loop length (default:\
    \ no\neffect)"
  type: long
  inputBinding:
    prefix: --max-bpil-length-ratio
- id: in_max_diff_am
  doc: "(30)\nMaximal difference for sizes of matched arcs"
  type: long
  inputBinding:
    prefix: --max-diff-am
- id: in_max_diff
  doc: "(-1)\nMaximal difference for alignment traces"
  type: long
  inputBinding:
    prefix: --max-diff
- id: in_max_diff_at_am
  doc: "(-1)\nMaximal difference for alignment traces, only at arc match positions"
  type: long
  inputBinding:
    prefix: --max-diff-at-am
- id: in_prob_unpaired_in_loop_threshold
  doc: "(0.01)\nThreshold for prob_unpaired_in_loop"
  type: double
  inputBinding:
    prefix: --prob_unpaired_in_loop_threshold
- id: in_prob_base_pair_in_loop_threshold
  doc: "(0.01)\nThreshold for prob_basepair_in_loop"
  type: double
  inputBinding:
    prefix: --prob_basepair_in_loop_threshold
- id: in_out_min_prob
  doc: "(0.0005)\nMinimal probability for output (min-prob overrides if smaller)"
  type: long
  inputBinding:
    prefix: --out-min-prob
- id: in_output_ps
  doc: Output best EPM chain as colored postscript
  type: boolean
  inputBinding:
    prefix: --output-ps
- id: in_ps_file_a
  doc: "()\nPostscript output file for sequence A"
  type: File
  inputBinding:
    prefix: --PS_fileA
- id: in_ps_file_b
  doc: "()\nPostscript output file for sequence B"
  type: File
  inputBinding:
    prefix: --PS_fileB
- id: in_output_loca_rna
  doc: "()\nFasta file with anchor constraints for locarna"
  type: File
  inputBinding:
    prefix: --output-locarna
- id: in_output_anchor_pp
  doc: "()\nPP files <fileroot>_A.pp and <fileroot>_B.pp, merging input PPs and\n\
    anchor constraints from chaining"
  type: File
  inputBinding:
    prefix: --output-anchor-pp
- id: in_output_clustal
  doc: "()\nWrite file with chain as alignment in clustalw format"
  type: File
  inputBinding:
    prefix: --output-clustal
- id: in_output_epm_list
  doc: "()\nA list of all found epms"
  type: File
  inputBinding:
    prefix: --output-epm-list
- id: in_output_chained_epm_list
  doc: "()\nA list of all EPMs that are present in the chain"
  type: File
  inputBinding:
    prefix: --output-chained-epm-list
- id: in_in_exact_struct_match
  doc: Allow inexact structure matches
  type: boolean
  inputBinding:
    prefix: --inexact-struct-match
- id: in_add_filter
  doc: "Apply an additional filter to enumerate only EPMs that are maximally\nextended\
    \ (only inexact)"
  type: boolean
  inputBinding:
    prefix: --add-filter
- id: in_no_chaining
  doc: Do not use the chaining algorithm to find best overall chain
  type: boolean
  inputBinding:
    prefix: --no-chaining
- id: in_sub_opt
  doc: Use the suboptimal traceback
  type: boolean
  inputBinding:
    prefix: --subopt
- id: in_diff_to_opt_score
  doc: "(-1)\nThreshold for suboptimal traceback"
  type: long
  inputBinding:
    prefix: --diff-to-opt-score
- id: in_min_score
  doc: "(90)\nMinimal score of a traced EPM"
  type: long
  inputBinding:
    prefix: --min-score
- id: in_number_of_e_pms
  doc: "(100)\nMaximal number of EPMs for the suboptimal traceback"
  type: long
  inputBinding:
    prefix: --number-of-EPMs
- id: in_no_lp
  doc: use --noLP option for folding
  type: boolean
  inputBinding:
    prefix: --noLP
- id: in_max_bp_span
  doc: "(-1)\nLimit maximum base pair span (default=off)"
  type: long
  inputBinding:
    prefix: --maxBPspan
- id: in_relaxed_anchors
  doc: Relax anchor constraints (default=off)
  type: boolean
  inputBinding:
    prefix: --relaxed-anchors
- id: in_stopwatch
  doc: Print run time information.
  type: boolean
  inputBinding:
    prefix: --stopwatch
- id: in_input_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_input_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ps_file_a
  doc: "()\nPostscript output file for sequence A"
  type: File
  outputBinding:
    glob: $(inputs.in_ps_file_a)
- id: out_ps_file_b
  doc: "()\nPostscript output file for sequence B"
  type: File
  outputBinding:
    glob: $(inputs.in_ps_file_b)
cwlVersion: v1.1
baseCommand:
- exparna_p
