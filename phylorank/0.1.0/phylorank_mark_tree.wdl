version 1.0

task PhylorankMarkTree {
  input {
    String thresholdsThresholds
    Int minMinSupport
    Boolean onlyOnlyNamedClades
    Int minMinLength
    Boolean noNoPercentile
    Boolean noNoRelativeDivergence
    Boolean noNoPrediction
    String? inputInputTree
    String? outputOutputTree
  }
  command <<<
    phylorank mark_tree \
      ~{inputInputTree} \
      ~{if defined(thresholdsThresholds) then ("--thresholds " +  '"' + thresholdsThresholds + '"') else ""} \
      ~{if defined(minMinSupport) then ("--min_support " +  '"' + minMinSupport + '"') else ""} \
      ~{true="--only_named_clades" false="" onlyOnlyNamedClades} \
      ~{if defined(minMinLength) then ("--min_length " +  '"' + minMinLength + '"') else ""} \
      ~{true="--no_percentile" false="" noNoPercentile} \
      ~{true="--no_relative_divergence" false="" noNoRelativeDivergence} \
      ~{true="--no_prediction" false="" noNoPrediction} \
      ~{outputOutputTree}
  >>>
}