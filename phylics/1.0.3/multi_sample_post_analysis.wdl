version 1.0

task MultiSamplePostAnalysis {
  input {
    String? n_permutations
    String? seed
  }
  command <<<
    multi_sample_post_analysis \
      ~{if defined(n_permutations) then ("--n_permutations " +  '"' + n_permutations + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    n_permutations: ""
    seed: ""
  }
}