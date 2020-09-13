version 1.0

task Locarna {
  input {
    Boolean? galaxy_xml
    Boolean? verbose
    Boolean? quiet
    Int? in_del
    Int? in_del_opening
    File? ribo_sum_file
    Boolean? use_ribo_sum
    Int? match
    Int? mismatch
    Int? unpaired_penalty
    Int? struct_weight
    Int? exp_prob
    Int? tau
    Int? exclusion
    Boolean? stacking
    Boolean? new_stacking
    Boolean? extended_pf
    Boolean? quad_pf
    Boolean? struct_local
    Boolean? seq_u_local
    String? free_end_gaps
    Int? normalized
    Int? penalized
    Int? width
    File? clustal
    File? stockholm
    File? pp
    Boolean? ali_fold_consensus_dp
    String? consensus_structure
    Float? consensus_gamma
    Boolean? local_output
    File? local_file_output
    Boolean? pos_output
    Boolean? write_structure
    Boolean? score_components
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
    Int? k_best
    Int? better
    Boolean? me_a_alignment
    Int? match_prob_method
    File? prob_cons_file
    Int? temperature_ali_pf
    Int? pf_struct_weight
    Boolean? me_a_gap_cost
    Int? me_a_alpha
    Int? me_a_beta
    Int? me_a_gamma
    Int? probability_scale
    File? write_match_probs
    File? write_trace_probs
    File? read_match_probs
    File? write_arc_match_scores
    File? read_arc_match_scores
    File? read_arc_match_probs
    Boolean? no_lp
    Int? max_bp_span
    Boolean? relaxed_anchors
    String constraints_dot
  }
  command <<<
    locarna \
      ~{constraints_dot} \
      ~{if (galaxy_xml) then "--galaxy-xml" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(in_del) then ("--indel " +  '"' + in_del + '"') else ""} \
      ~{if defined(in_del_opening) then ("--indel-opening " +  '"' + in_del_opening + '"') else ""} \
      ~{if defined(ribo_sum_file) then ("--ribosum-file " +  '"' + ribo_sum_file + '"') else ""} \
      ~{if defined(use_ribo_sum) then ("--use-ribosum " +  '"' + use_ribo_sum + '"') else ""} \
      ~{if defined(match) then ("--match " +  '"' + match + '"') else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(unpaired_penalty) then ("--unpaired-penalty " +  '"' + unpaired_penalty + '"') else ""} \
      ~{if defined(struct_weight) then ("--struct-weight " +  '"' + struct_weight + '"') else ""} \
      ~{if defined(exp_prob) then ("--exp-prob " +  '"' + exp_prob + '"') else ""} \
      ~{if defined(tau) then ("--tau " +  '"' + tau + '"') else ""} \
      ~{if defined(exclusion) then ("--exclusion " +  '"' + exclusion + '"') else ""} \
      ~{if (stacking) then "--stacking" else ""} \
      ~{if (new_stacking) then "--new-stacking" else ""} \
      ~{if (extended_pf) then "--extended-pf" else ""} \
      ~{if (quad_pf) then "--quad-pf" else ""} \
      ~{if defined(struct_local) then ("--struct-local " +  '"' + struct_local + '"') else ""} \
      ~{if defined(seq_u_local) then ("--sequ-local " +  '"' + seq_u_local + '"') else ""} \
      ~{if defined(free_end_gaps) then ("--free-endgaps " +  '"' + free_end_gaps + '"') else ""} \
      ~{if defined(normalized) then ("--normalized " +  '"' + normalized + '"') else ""} \
      ~{if defined(penalized) then ("--penalized " +  '"' + penalized + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(clustal) then ("--clustal " +  '"' + clustal + '"') else ""} \
      ~{if defined(stockholm) then ("--stockholm " +  '"' + stockholm + '"') else ""} \
      ~{if defined(pp) then ("--pp " +  '"' + pp + '"') else ""} \
      ~{if (ali_fold_consensus_dp) then "--alifold-consensus-dp" else ""} \
      ~{if defined(consensus_structure) then ("--consensus-structure " +  '"' + consensus_structure + '"') else ""} \
      ~{if defined(consensus_gamma) then ("--consensus-gamma " +  '"' + consensus_gamma + '"') else ""} \
      ~{if (local_output) then "--local-output" else ""} \
      ~{if (local_file_output) then "--local-file-output" else ""} \
      ~{if (pos_output) then "--pos-output" else ""} \
      ~{if (write_structure) then "--write-structure" else ""} \
      ~{if (score_components) then "--score-components" else ""} \
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
      ~{if defined(k_best) then ("--kbest " +  '"' + k_best + '"') else ""} \
      ~{if defined(better) then ("--better " +  '"' + better + '"') else ""} \
      ~{if (me_a_alignment) then "--mea-alignment" else ""} \
      ~{if defined(match_prob_method) then ("--match-prob-method " +  '"' + match_prob_method + '"') else ""} \
      ~{if defined(prob_cons_file) then ("--probcons-file " +  '"' + prob_cons_file + '"') else ""} \
      ~{if defined(temperature_ali_pf) then ("--temperature-alipf " +  '"' + temperature_ali_pf + '"') else ""} \
      ~{if defined(pf_struct_weight) then ("--pf-struct-weight " +  '"' + pf_struct_weight + '"') else ""} \
      ~{if (me_a_gap_cost) then "--mea-gapcost" else ""} \
      ~{if defined(me_a_alpha) then ("--mea-alpha " +  '"' + me_a_alpha + '"') else ""} \
      ~{if defined(me_a_beta) then ("--mea-beta " +  '"' + me_a_beta + '"') else ""} \
      ~{if defined(me_a_gamma) then ("--mea-gamma " +  '"' + me_a_gamma + '"') else ""} \
      ~{if defined(probability_scale) then ("--probability-scale " +  '"' + probability_scale + '"') else ""} \
      ~{if defined(write_match_probs) then ("--write-match-probs " +  '"' + write_match_probs + '"') else ""} \
      ~{if defined(write_trace_probs) then ("--write-trace-probs " +  '"' + write_trace_probs + '"') else ""} \
      ~{if defined(read_match_probs) then ("--read-match-probs " +  '"' + read_match_probs + '"') else ""} \
      ~{if defined(write_arc_match_scores) then ("--write-arcmatch-scores " +  '"' + write_arc_match_scores + '"') else ""} \
      ~{if defined(read_arc_match_scores) then ("--read-arcmatch-scores " +  '"' + read_arc_match_scores + '"') else ""} \
      ~{if defined(read_arc_match_probs) then ("--read-arcmatch-probs " +  '"' + read_arc_match_probs + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if defined(max_bp_span) then ("--maxBPspan " +  '"' + max_bp_span + '"') else ""} \
      ~{if (relaxed_anchors) then "--relaxed-anchors" else ""}
  >>>
  parameter_meta {
    galaxy_xml: "Print galaxy xml wrapper."
    verbose: "Be verbose. Prints input parameters, sequences and size information."
    quiet: "Be quiet."
    in_del: "(-150)\\nIndel score. Score contribution of each single base insertion or\\ndeletion. Indel opening score and indel score define the affine scoring\\nof gaps."
    in_del_opening: "(-750)\\nIndel opening score. Score contribution of opening an insertion or\\ndeletion, i.e. score for a consecutive run of deletions or insertions.\\nIndel opening score and indel score define the affine scoring of gaps."
    ribo_sum_file: "(RIBOSUM85_60)\\nFile specifying the Ribosum base and base-pair similarities. [default:\\nuse RIBOSUM85_60 without requiring a Ribosum file.]"
    use_ribo_sum: "(true)\\nUse ribosum scores for scoring base matches and base pair matches; note\\nthat tau=0 suppresses any effect on the latter."
    match: "(50)\\nSet score contribution of a base match (unless ribosum scoring)."
    mismatch: "(0)\\nSet score contribution of a base mismatch (unless ribosum scoring)."
    unpaired_penalty: "(0)\\nPenalty for unpaired bases"
    struct_weight: "(200)\\nMaximal weight of 1/2 arc match. Balances structure vs. sequence score\\ncontributions."
    exp_prob: "Expected base pair probability. Used as background probability for base\\npair scoring [default: calculated from sequence length]."
    tau: "(50)\\nTau factor. Factor for contribution of sequence similarity in an arc\\nmatch (in percent). tau=0 does not penalize any sequence information\\nincluding compensatory mutations at arc matches, while tau=100 scores\\nsequence similarity at ends of base matches (if a scoring matrix like\\nribosum is used, this adds the contributions for base pair match from the\\nmatrix). [default tau=0!]"
    exclusion: "(0)\\nScore contribution per exclusion in structure local alignment. Set to\\nzero for unrestricted structure locality."
    stacking: "Use stacking terms (requires stack-probs by RNAfold -p2)"
    new_stacking: "Use new stacking terms (requires stack-probs by RNAfold -p2)"
    extended_pf: "Use extended precision for the computation of sequence envelopes. This\\nenables handling significantly larger instances. [default]"
    quad_pf: "Use quad precision for partition function values. Even more precision\\nthan extended pf, but usually much slower (overrides extended-pf)."
    struct_local: "(false)\\nTurn on/off structure locality. Allow exclusions in alignments of\\nconnected substructures."
    seq_u_local: "(false)\\nTurn on/off sequence locality. Find best alignment of arbitrary\\nsubsequences of the input sequences."
    free_end_gaps: "(----)\\nControl where end gaps are allowed for free. String of four +/- symbols,\\nallowing/disallowing free end gaps at the four sequence ends in the order\\nleft end of first sequence, right end of first sequence, left end of\\nsecond sequence, right end of second sequence. For example, \\\"+---\\\" allows\\nfree end gaps at the left end of the first alignment string; \\\"----\\\"\\nforbids free end gaps [default]."
    normalized: "(0)\\nPerform normalized local alignment with parameter L. This causes locarna\\nto compute the best local alignment according to 'Score' / ( L + 'length'\\n), where length is the sum of the lengths of the two locally aligned\\nsubsequences. Thus, the larger L, the larger the local alignment; the\\nsize of value L is in the order of local alignment lengths. Verbose\\nyields info on the iterative optimizations."
    penalized: "(0)\\nPenalized local alignment with penalty PP"
    width: "(120)\\nWidth of alignment output."
    clustal: "Write alignment in ClustalW (aln) format to given file."
    stockholm: "Write alignment Stockholm format to given file."
    pp: "Write alignment in PP format to given file."
    ali_fold_consensus_dp: "Compute consensus dot plot by alifold (warning: this may fail for long\\nsequences)."
    consensus_structure: "(none)\\nType of consensus structures written to screen and stockholm output\\n[alifold|mea|none] (default: none)."
    consensus_gamma: "(1.0)\\nBase pair weight for mea consensus computation. For MEA, base pairs are\\nscored by their pair probability times 2 gamma; unpaired bases, by their\\nunpaired probability."
    local_output: "Output only local sub-alignment (to std out)."
    local_file_output: "Write only local sub-alignment to output files."
    pos_output: "Output only local sub-alignment positions."
    write_structure: "Write guidance structure in output."
    score_components: "Output components of the score (experimental)."
    stopwatch: "Print run time informations."
    min_prob: "(0.001)\\nMinimal probability. Only base pairs of at least this probability are\\ntaken into account."
    max_bps_length_ratio: "(0.0)\\nMaximal ratio of #base pairs divided by sequence length. This serves as a\\nsecond filter on the \\\"significant\\\" base pairs. [default: 0.0 = no\\neffect]."
    max_diff_am: "(-1)\\nMaximal difference for sizes of matched arcs. [-1=off]"
    max_diff: "(-1)\\nMaximal difference for positions of alignment traces (and aligned bases).\\n[-1=off]"
    max_diff_at_am: "(-1)\\nMaximal difference for positions of alignment traces at arc match ends.\\n[-1=off]"
    max_diff_aln: "()\\nMaximal difference relative to given alignment (file in clustalw format)"
    max_diff_pw_aln: "()\\nMaximal difference relative to given alignment (string, delim=AMPERSAND)"
    max_diff_relax: "Relax deviation constraints in multiple aligmnent"
    min_trace_probability: "(1e-4)\\nMinimal sequence alignment probability of potential traces\\n(probability-based sequence alignment envelope) [default=1e-4]."
    k_best: "(-1)\\nEnumerate k-best alignments"
    better: "(-1000000)\\nEnumerate alignments better threshold t"
    me_a_alignment: "Perform maximum expected accuracy alignment (instead of using the default\\nsimilarity scoring)."
    match_prob_method: "(0)\\nSelect method for computing sequence-based base match probablities (to be\\nused for mea-type alignment scores). Methods: 1=probcons-style from HMM,\\n2=probalign-style from PFs, 3=from PFs, local"
    prob_cons_file: "Read parameters for probcons-like calculation of match probabilities from\\nprobcons parameter file."
    temperature_ali_pf: "(300)\\nTemperature for the /sequence alignment/ partition functions used by the\\nprobcons-like sequence-based match/trace probability computation (this\\ntemperature is different from the 'physical' temperature of RNA\\nfolding!)."
    pf_struct_weight: "(200)\\nStructure weight in PF computations (for the computation of\\nsequence-based match probabilties from partition functions)."
    me_a_gap_cost: "Use gap cost in mea alignment"
    me_a_alpha: "(0)\\nWeight alpha for MEA"
    me_a_beta: "(200)\\nWeight beta for MEA"
    me_a_gamma: "(100)\\nWeight gamma for MEA"
    probability_scale: "(10000)\\nScale for probabilities/resolution of mea score"
    write_match_probs: "Write match probs to file (don't align!)."
    write_trace_probs: "Write trace probs to file (don't align!)."
    read_match_probs: "Read match probabilities from file."
    write_arc_match_scores: "Write arcmatch scores (don't align!)"
    read_arc_match_scores: "Read arcmatch scores."
    read_arc_match_probs: "Read arcmatch probabilities (weighted by factor mea_beta/100)"
    no_lp: "Disallow lonely pairs in prediction and alignment."
    max_bp_span: "(-1)\\nLimit maximum base pair span [default=off]."
    relaxed_anchors: "Use relaxed semantics of anchor constraints [default=strict semantics]."
    constraints_dot: "Report bugs to <will (at) informatik.uni-freiburg.de>."
  }
  output {
    File out_stdout = stdout()
    File out_local_file_output = "${in_local_file_output}"
  }
}