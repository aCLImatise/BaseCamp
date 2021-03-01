version 1.0

task Rsq {
  input {
    Int? apply_frequency_cutoff
    Int? test_significance_correlation
    Int? maximum_distance_bw
    File? i
  }
  command <<<
    rsq \
      ~{if defined(apply_frequency_cutoff) then ("-c " +  '"' + apply_frequency_cutoff + '"') else ""} \
      ~{if defined(test_significance_correlation) then ("-t " +  '"' + test_significance_correlation + '"') else ""} \
      ~{if defined(maximum_distance_bw) then ("-m " +  '"' + maximum_distance_bw + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    apply_frequency_cutoff: ": apply a frequency cutoff"
    test_significance_correlation: ": test significance of correlation of"
    maximum_distance_bw: ": maximum distance b/w markers\\nLD with distance with <int> permutations\\n"
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}