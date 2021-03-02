version 1.0

task LocarnaRnafoldPp {
  input {
    Boolean? no_lp
    Int? max_bp_span
    Boolean? stacking
    Int? dangling
    Boolean? in_loop
    Int? min_prob
    Float? p_unpaired_in_loop
    Float? p_base_pair_in_loop
    File? output_file
    Boolean? force_ali_fold
    String help
    String verbose
  }
  command <<<
    locarna_rnafold_pp \
      ~{help} \
      ~{verbose} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if defined(max_bp_span) then ("--maxBPspan " +  '"' + max_bp_span + '"') else ""} \
      ~{if (stacking) then "--stacking" else ""} \
      ~{if defined(dangling) then ("--dangling " +  '"' + dangling + '"') else ""} \
      ~{if (in_loop) then "--in-loop" else ""} \
      ~{if defined(min_prob) then ("--min-prob " +  '"' + min_prob + '"') else ""} \
      ~{if defined(p_unpaired_in_loop) then ("--p_unpaired_in_loop " +  '"' + p_unpaired_in_loop + '"') else ""} \
      ~{if defined(p_base_pair_in_loop) then ("--p_basepair_in_loop " +  '"' + p_base_pair_in_loop + '"') else ""} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""} \
      ~{if (force_ali_fold) then "--force-alifold" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_lp: "No lonely pairs"
    max_bp_span: "(-1)\\nLimit maximum base pair span (default=off)"
    stacking: "Compute stacking terms"
    dangling: "(2)\\nDangling option value"
    in_loop: "Compute in-loop probabilities"
    min_prob: "(0.001)\\nMinimal probability"
    p_unpaired_in_loop: "(0.0005)\\nThreshold for prob_unpaired_in_loop"
    p_base_pair_in_loop: "(0.0005)\\nThreshold for prob_basepair_in_loop"
    output_file: "()\\nOutput file"
    force_ali_fold: "Force alifold for single sequences\\n"
    help: "-V,--version"
    verbose: "-C,--use-struct-constraints"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}