version 1.0

task MagpurifyTetraFreqOut {
  input {
    String cutCutOff
    Boolean weightedWeightedMean
  }
  command <<<
    magpurify tetra-freq out \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{true="--weighted-mean" false="" weightedWeightedMean}
  >>>
}