version 1.0

task ComputeFullMatrix.py {
  input {
    String? aligner_m_score_threshold
    Array[String] in
  }
  command <<<
    compute_full_matrix.py \
      ~{if defined(aligner_m_score_threshold) then ("--aligner_mscore_threshold " +  '"' + aligner_m_score_threshold + '"') else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""}
  >>>
  parameter_meta {
    aligner_m_score_threshold: "cutoff used at alignment, for coloring realigned values in blue"
    in: ""
  }
}