version 1.0

task ComputeFullMatrix.py {
  input {
    String alignerAlignerMScoreThreshold
  }
  command <<<
    compute_full_matrix.py \
      ~{if defined(alignerAlignerMScoreThreshold) then ("--aligner_mscore_threshold " +  '"' + alignerAlignerMScoreThreshold + '"') else ""}
  >>>
}