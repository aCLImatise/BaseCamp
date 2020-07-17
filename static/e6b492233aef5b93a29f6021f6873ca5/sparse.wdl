version 1.0

task Sparse {
  input {
    Boolean? galaxy_xml
    Boolean? verbose
    Boolean? quiet
    Boolean? stacking
    Boolean? new_stacking
    Boolean? extended_pf
    Boolean? quad_pf
    Boolean? local_output
    Boolean? local_file_output
    Boolean? pos_output
    Boolean? write_structure
    Boolean? special_gap_symbols
    Boolean? stopwatch
    File? write_match_probs
    File? read_match_probs
    File? write_arc_match_scores
    File? read_arc_match_scores
    File? read_arc_match_probs
    Boolean? relaxed_anchors
    String input_one
    String input_two
  }
  command <<<
    sparse \
      ~{input_one} \
      ~{input_two} \
      ~{true="--galaxy-xml" false="" galaxy_xml} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--stacking" false="" stacking} \
      ~{true="--new-stacking" false="" new_stacking} \
      ~{true="--extended-pf" false="" extended_pf} \
      ~{true="--quad-pf" false="" quad_pf} \
      ~{true="--local-output" false="" local_output} \
      ~{true="--local-file-output" false="" local_file_output} \
      ~{true="--pos-output" false="" pos_output} \
      ~{true="--write-structure" false="" write_structure} \
      ~{true="--special-gap-symbols" false="" special_gap_symbols} \
      ~{true="--stopwatch" false="" stopwatch} \
      ~{if defined(write_match_probs) then ("--write-match-probs " +  '"' + write_match_probs + '"') else ""} \
      ~{if defined(read_match_probs) then ("--read-match-probs " +  '"' + read_match_probs + '"') else ""} \
      ~{if defined(write_arc_match_scores) then ("--write-arcmatch-scores " +  '"' + write_arc_match_scores + '"') else ""} \
      ~{if defined(read_arc_match_scores) then ("--read-arcmatch-scores " +  '"' + read_arc_match_scores + '"') else ""} \
      ~{if defined(read_arc_match_probs) then ("--read-arcmatch-probs " +  '"' + read_arc_match_probs + '"') else ""} \
      ~{true="--relaxed-anchors" false="" relaxed_anchors}
  >>>
  parameter_meta {
    galaxy_xml: "Print galaxy xml wrapper."
    verbose: "Be verbose. Prints input parameters, sequences and size information."
    quiet: "Be quiet."
    stacking: "Use stacking terms (requires stack-probs by RNAfold -p2)"
    new_stacking: "Use new stacking terms (requires stack-probs by RNAfold -p2)"
    extended_pf: "Use extended precision for the computation of sequence envelopes. This enables handling significantly larger instances. [default]"
    quad_pf: "Use quad precision for partition function values. Even more precision than extended pf, but usually much slower (overrides extended-pf)."
    local_output: "Output only local sub-alignment (to std out)."
    local_file_output: "Write only local sub-alignment to output files."
    pos_output: "Output only local sub-alignment positions."
    write_structure: "Write guidance structure in output."
    special_gap_symbols: "Special distinct gap symbols for loop gaps or gaps caused by sparsification"
    stopwatch: "Print run time informations."
    write_match_probs: "Write match probs to file (don't align!)."
    read_match_probs: "Read match probabilities from file."
    write_arc_match_scores: "Write arcmatch scores (don't align!)"
    read_arc_match_scores: "Read arcmatch scores."
    read_arc_match_probs: "Read arcmatch probabilities (weighted by factor mea_beta/100)"
    relaxed_anchors: "Use relaxed semantics of anchor constraints [default=strict semantics]."
    input_one: ""
    input_two: ""
  }
}