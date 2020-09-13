version 1.0

task SimulateErrorspy {
  input {
    Float? total_rate_substitutions
    Int? relative_frequency_substitutionsinsertionsdeletions
    String? random_seed_none
  }
  command <<<
    simulate_errors_py \
      ~{if defined(total_rate_substitutions) then ("-e " +  '"' + total_rate_substitutions + '"') else ""} \
      ~{if defined(relative_frequency_substitutionsinsertionsdeletions) then ("-w " +  '"' + relative_frequency_substitutionsinsertionsdeletions + '"') else ""} \
      ~{if defined(random_seed_none) then ("-z " +  '"' + random_seed_none + '"') else ""}
  >>>
  parameter_meta {
    total_rate_substitutions: "Total rate of substitutions insertions and deletions\\n(0.1)."
    relative_frequency_substitutionsinsertionsdeletions: "Relative frequency of substitutions,insertions,deletions\\n(1,1,4)."
    random_seed_none: "Random seed (None)."
  }
  output {
    File out_stdout = stdout()
  }
}