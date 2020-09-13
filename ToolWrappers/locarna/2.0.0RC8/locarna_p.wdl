version 1.0

task LocarnaP {
  input {
    Boolean? verbose
    Boolean? quiet
    Int? in_del
    Int? in_del_opening
    File? ribo_sum_file
    Boolean? use_ribo_sum
    Int? match
    Int? mismatch
    Int? struct_weight
    Int? exp_prob
    Int? tau
    Int? temperature_ali_pf
    Float? pf_scale
    Boolean? extended_pf
    Boolean? quad_pf
    File? write_arc_match_probs
    File? write_base_match_probs
    Int? min_am_prob
    Int? min_bm_prob
    Boolean? include_am_in_bm
    Boolean? stopwatch
    Int? min_prob
    Int? max_bps_length_ratio
    Int? max_diff_am
    Int? max_diff
    Int? max_diff_at_am
    File? max_diff_aln
    Int? max_diff_pw_aln
    Boolean? max_diff_relax
    Int? min_trace_probability
    Boolean? fragment_match_probs
    Int? max_bp_span
    Boolean? relaxed_anchors
    String constraints_dot
  }
  command <<<
    locarna_p \
      ~{constraints_dot} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(in_del) then ("--indel " +  '"' + in_del + '"') else ""} \
      ~{if defined(in_del_opening) then ("--indel-opening " +  '"' + in_del_opening + '"') else ""} \
      ~{if defined(ribo_sum_file) then ("--ribosum-file " +  '"' + ribo_sum_file + '"') else ""} \
      ~{if defined(use_ribo_sum) then ("--use-ribosum " +  '"' + use_ribo_sum + '"') else ""} \
      ~{if defined(match) then ("--match " +  '"' + match + '"') else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(struct_weight) then ("--struct-weight " +  '"' + struct_weight + '"') else ""} \
      ~{if defined(exp_prob) then ("--exp-prob " +  '"' + exp_prob + '"') else ""} \
      ~{if defined(tau) then ("--tau " +  '"' + tau + '"') else ""} \
      ~{if defined(temperature_ali_pf) then ("--temperature-alipf " +  '"' + temperature_ali_pf + '"') else ""} \
      ~{if defined(pf_scale) then ("--pf-scale " +  '"' + pf_scale + '"') else ""} \
      ~{if (extended_pf) then "--extended-pf" else ""} \
      ~{if (quad_pf) then "--quad-pf" else ""} \
      ~{if defined(write_arc_match_probs) then ("--write-arcmatch-probs " +  '"' + write_arc_match_probs + '"') else ""} \
      ~{if defined(write_base_match_probs) then ("--write-basematch-probs " +  '"' + write_base_match_probs + '"') else ""} \
      ~{if defined(min_am_prob) then ("--min-am-prob " +  '"' + min_am_prob + '"') else ""} \
      ~{if defined(min_bm_prob) then ("--min-bm-prob " +  '"' + min_bm_prob + '"') else ""} \
      ~{if (include_am_in_bm) then "--include-am-in-bm" else ""} \
      ~{if (stopwatch) then "--stopwatch" else ""} \
      ~{if defined(min_prob) then ("--min-prob " +  '"' + min_prob + '"') else ""} \
      ~{if defined(max_bps_length_ratio) then ("--max-bps-length-ratio " +  '"' + max_bps_length_ratio + '"') else ""} \
      ~{if defined(max_diff_am) then ("--max-diff-am " +  '"' + max_diff_am + '"') else ""} \
      ~{if defined(max_diff) then ("--max-diff " +  '"' + max_diff + '"') else ""} \
      ~{if defined(max_diff_at_am) then ("--max-diff-at-am " +  '"' + max_diff_at_am + '"') else ""} \
      ~{if defined(max_diff_aln) then ("--max-diff-aln " +  '"' + max_diff_aln + '"') else ""} \
      ~{if defined(max_diff_pw_aln) then ("--max-diff-pw-aln " +  '"' + max_diff_pw_aln + '"') else ""} \
      ~{if (max_diff_relax) then "--max-diff-relax" else ""} \
      ~{if defined(min_trace_probability) then ("--min-trace-probability " +  '"' + min_trace_probability + '"') else ""} \
      ~{if (fragment_match_probs) then "--fragment-match-probs" else ""} \
      ~{if defined(max_bp_span) then ("--maxBPspan " +  '"' + max_bp_span + '"') else ""} \
      ~{if (relaxed_anchors) then "--relaxed-anchors" else ""}
  >>>
  parameter_meta {
    verbose: "Be verbose. Prints input parameters, sequences and size information."
    quiet: "Be quiet."
    in_del: "(-150)\\nIndel score. Score contribution of each single base insertion or\\ndeletion. Indel opening score and indel score define the affine scoring\\nof gaps."
    in_del_opening: "(-750)\\nIndel opening score. Score contribution of opening an insertion or\\ndeletion, i.e. score for a consecutive run of deletions or insertions.\\nIndel opening score and indel score define the affine scoring of gaps."
    ribo_sum_file: "(RIBOSUM85_60)\\nFile specifying the Ribosum base and base-pair similarities. [default:\\nuse RIBOSUM85_60 without requiring a Ribosum file.]"
    use_ribo_sum: "(true)\\nUse ribosum scores for scoring base matches and base pair matches; note\\nthat tau=0 suppresses any effect on the latter."
    match: "(50)\\nSet score contribution of a base match (unless ribosum scoring)."
    mismatch: "(0)\\nSet score contribution of a base mismatch (unless ribosum scoring)."
    struct_weight: "(200)\\nMaximal weight of 1/2 arc match. Balances structure vs. sequence score\\ncontributions."
    exp_prob: "Expected base pair probability. Used as background probability for base\\npair scoring [default: calculated from sequence length]."
    tau: "(50)\\nTau factor. Factor for contribution of sequence similarity in an arc\\nmatch (in percent). tau=0 does not penalize any sequence information\\nincluding compensatory mutations at arc matches, while tau=100 scores\\nsequence similarity at ends of base matches (if a scoring matrix like\\nribosum is used, this adds the contributions for base pair match from the\\nmatrix). [default tau=0!]"
    temperature_ali_pf: "(300)\\nTemperature for the /sequence alignment/ partition functions used by the\\nprobcons-like sequence-based match/trace probability computation (this\\ntemperature is different from the 'physical' temperature of RNA\\nfolding!)."
    pf_scale: "(1.0)\\nFactor for scaling the partition functions. Use in order to avoid\\noverflow."
    extended_pf: "Use extended precision for partition function values. This increases\\nrun-time and space (less than 2x), however enables handling significantly\\nlarger instances."
    quad_pf: "Use quad precision for partition function values. Even more precision\\nthan extended pf, but usually much slower (overrides extended-pf)."
    write_arc_match_probs: "Write arcmatch probabilities"
    write_base_match_probs: "Write basematch probabilities"
    min_am_prob: "(0.001)\\nMinimal arc match probability. Write probabilities for only the arc\\nmatchs of at least this probability."
    min_bm_prob: "(0.001)\\nMinimal base match probability. Write probabilities for only the base\\nmatchs of at least this probability."
    include_am_in_bm: "Include arc match cases in base match probabilities"
    stopwatch: "Print run time informations."
    min_prob: "(0.001)\\nMinimal probability. Only base pairs of at least this probability are\\ntaken into account."
    max_bps_length_ratio: "(0.0)\\nMaximal ratio of #base pairs divided by sequence length. This serves as a\\nsecond filter on the \\\"significant\\\" base pairs. [default: 0.0 = no\\neffect]."
    max_diff_am: "(-1)\\nMaximal difference for sizes of matched arcs. [-1=off]"
    max_diff: "(-1)\\nMaximal difference for positions of alignment traces (and aligned bases).\\n[-1=off]"
    max_diff_at_am: "(-1)\\nMaximal difference for positions of alignment traces at arc match ends.\\n[-1=off]"
    max_diff_aln: "()\\nMaximal difference relative to given alignment (file in clustalw format)"
    max_diff_pw_aln: "()\\nMaximal difference relative to given alignment (string, delim=AMPERSAND)"
    max_diff_relax: "Relax deviation constraints in multiple aligmnent"
    min_trace_probability: "(1e-5)\\nMinimal sequence alignment probability of potential traces\\n(probability-based sequence alignment envelope) [default=1e-4]."
    fragment_match_probs: "=<\\\"i j k l\\\">()\\nRequests probabilities for the match of fragments [i..j] and [k..l].\\nAccepts a ';' separated list of ranges."
    max_bp_span: "(-1)\\nLimit maximum base pair span [default=off]."
    relaxed_anchors: "Use relaxed semantics of anchor constraints [default=strict semantics]."
    constraints_dot: "Report bugs to <will (at) informatik.uni-freiburg.de>."
  }
  output {
    File out_stdout = stdout()
  }
}