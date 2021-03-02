version 1.0

task ExparnaP {
  input {
    Boolean? no_stacking
    Int? alpha_one
    Int? alpha_two
    Int? alpha_three
    Int? struct_mismatch_score
    Int? min_prob
    Int? max_bps_length_ratio
    Int? max_uil_length_ratio
    Int? max_bp_il_length_ratio
    Int? max_diff_am
    Int? max_diff
    Int? max_diff_at_am
    Float? prob_unpaired_in_loop_threshold
    Float? prob_base_pair_in_loop_threshold
    Int? out_min_prob
    Boolean? output_ps
    File? ps_file_a
    File? ps_file_b
    File? output_loca_rna
    File? output_anchor_pp
    File? output_clustal
    File? output_epm_list
    File? output_chained_epm_list
    Boolean? in_exact_struct_match
    Boolean? add_filter
    Boolean? no_chaining
    Boolean? sub_opt
    Int? diff_to_opt_score
    Int? min_score
    Int? number_of_e_pms
    Boolean? no_lp
    Int? max_bp_span
    Boolean? relaxed_anchors
    Boolean? stopwatch
    String help
    String quiet
  }
  command <<<
    exparna_p \
      ~{help} \
      ~{quiet} \
      ~{if (no_stacking) then "--no-stacking" else ""} \
      ~{if defined(alpha_one) then ("--alpha_1 " +  '"' + alpha_one + '"') else ""} \
      ~{if defined(alpha_two) then ("--alpha_2 " +  '"' + alpha_two + '"') else ""} \
      ~{if defined(alpha_three) then ("--alpha_3 " +  '"' + alpha_three + '"') else ""} \
      ~{if defined(struct_mismatch_score) then ("--struct-mismatch-score " +  '"' + struct_mismatch_score + '"') else ""} \
      ~{if defined(min_prob) then ("--min-prob " +  '"' + min_prob + '"') else ""} \
      ~{if defined(max_bps_length_ratio) then ("--max-bps-length-ratio " +  '"' + max_bps_length_ratio + '"') else ""} \
      ~{if defined(max_uil_length_ratio) then ("--max-uil-length-ratio " +  '"' + max_uil_length_ratio + '"') else ""} \
      ~{if defined(max_bp_il_length_ratio) then ("--max-bpil-length-ratio " +  '"' + max_bp_il_length_ratio + '"') else ""} \
      ~{if defined(max_diff_am) then ("--max-diff-am " +  '"' + max_diff_am + '"') else ""} \
      ~{if defined(max_diff) then ("--max-diff " +  '"' + max_diff + '"') else ""} \
      ~{if defined(max_diff_at_am) then ("--max-diff-at-am " +  '"' + max_diff_at_am + '"') else ""} \
      ~{if defined(prob_unpaired_in_loop_threshold) then ("--prob_unpaired_in_loop_threshold " +  '"' + prob_unpaired_in_loop_threshold + '"') else ""} \
      ~{if defined(prob_base_pair_in_loop_threshold) then ("--prob_basepair_in_loop_threshold " +  '"' + prob_base_pair_in_loop_threshold + '"') else ""} \
      ~{if defined(out_min_prob) then ("--out-min-prob " +  '"' + out_min_prob + '"') else ""} \
      ~{if (output_ps) then "--output-ps" else ""} \
      ~{if defined(ps_file_a) then ("--PS_fileA " +  '"' + ps_file_a + '"') else ""} \
      ~{if defined(ps_file_b) then ("--PS_fileB " +  '"' + ps_file_b + '"') else ""} \
      ~{if defined(output_loca_rna) then ("--output-locarna " +  '"' + output_loca_rna + '"') else ""} \
      ~{if defined(output_anchor_pp) then ("--output-anchor-pp " +  '"' + output_anchor_pp + '"') else ""} \
      ~{if defined(output_clustal) then ("--output-clustal " +  '"' + output_clustal + '"') else ""} \
      ~{if defined(output_epm_list) then ("--output-epm-list " +  '"' + output_epm_list + '"') else ""} \
      ~{if defined(output_chained_epm_list) then ("--output-chained-epm-list " +  '"' + output_chained_epm_list + '"') else ""} \
      ~{if (in_exact_struct_match) then "--inexact-struct-match" else ""} \
      ~{if (add_filter) then "--add-filter" else ""} \
      ~{if (no_chaining) then "--no-chaining" else ""} \
      ~{if (sub_opt) then "--subopt" else ""} \
      ~{if defined(diff_to_opt_score) then ("--diff-to-opt-score " +  '"' + diff_to_opt_score + '"') else ""} \
      ~{if defined(min_score) then ("--min-score " +  '"' + min_score + '"') else ""} \
      ~{if defined(number_of_e_pms) then ("--number-of-EPMs " +  '"' + number_of_e_pms + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if defined(max_bp_span) then ("--maxBPspan " +  '"' + max_bp_span + '"') else ""} \
      ~{if (relaxed_anchors) then "--relaxed-anchors" else ""} \
      ~{if (stopwatch) then "--stopwatch" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_stacking: "Do not use stacking terms (otherwise needs stacking probs by RNAfold -p2)"
    alpha_one: "(1)\\nMultiplier for sequential score"
    alpha_two: "(5)\\nMultiplier for structural score"
    alpha_three: "(5)\\nMultiplier for stacking score, 0 means no stacking contribution"
    struct_mismatch_score: "(-10)\\nScore for a structural mismatch (nucleotide mismatch in an arcmatch)"
    min_prob: "(0.01)\\nMinimal probability"
    max_bps_length_ratio: "(0.0)\\nMaximal ratio of #base pairs divided by sequence length (default: no\\neffect)"
    max_uil_length_ratio: "(0.0)\\nMaximal ratio of #unpaired bases in loops divided by sequence length\\n(default: no effect)"
    max_bp_il_length_ratio: "(0.0)\\nMaximal ratio of #base pairs in loops divided by loop length (default: no\\neffect)"
    max_diff_am: "(30)\\nMaximal difference for sizes of matched arcs"
    max_diff: "(-1)\\nMaximal difference for alignment traces"
    max_diff_at_am: "(-1)\\nMaximal difference for alignment traces, only at arc match positions"
    prob_unpaired_in_loop_threshold: "(0.01)\\nThreshold for prob_unpaired_in_loop"
    prob_base_pair_in_loop_threshold: "(0.01)\\nThreshold for prob_basepair_in_loop"
    out_min_prob: "(0.0005)\\nMinimal probability for output (min-prob overrides if smaller)"
    output_ps: "Output best EPM chain as colored postscript"
    ps_file_a: "()\\nPostscript output file for sequence A"
    ps_file_b: "()\\nPostscript output file for sequence B"
    output_loca_rna: "()\\nFasta file with anchor constraints for locarna"
    output_anchor_pp: "()\\nPP files <fileroot>_A.pp and <fileroot>_B.pp, merging input PPs and\\nanchor constraints from chaining"
    output_clustal: "()\\nWrite file with chain as alignment in clustalw format"
    output_epm_list: "()\\nA list of all found epms"
    output_chained_epm_list: "()\\nA list of all EPMs that are present in the chain"
    in_exact_struct_match: "Allow inexact structure matches"
    add_filter: "Apply an additional filter to enumerate only EPMs that are maximally\\nextended (only inexact)"
    no_chaining: "Do not use the chaining algorithm to find best overall chain"
    sub_opt: "Use the suboptimal traceback"
    diff_to_opt_score: "(-1)\\nThreshold for suboptimal traceback"
    min_score: "(90)\\nMinimal score of a traced EPM"
    number_of_e_pms: "(100)\\nMaximal number of EPMs for the suboptimal traceback"
    no_lp: "use --noLP option for folding"
    max_bp_span: "(-1)\\nLimit maximum base pair span (default=off)"
    relaxed_anchors: "Relax anchor constraints (default=off)"
    stopwatch: "Print run time information."
    help: "-V,--version"
    quiet: "Scoring parameters:"
  }
  output {
    File out_stdout = stdout()
    File out_ps_file_a = "${in_ps_file_a}"
    File out_ps_file_b = "${in_ps_file_b}"
  }
}