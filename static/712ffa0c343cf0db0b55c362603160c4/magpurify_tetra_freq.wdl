version 1.0

task MagpurifyTetraFreq {
  input {
    String cutCutOff
    Boolean weightedWeightedMean
  }
  command <<<
    magpurify tetra-freq \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{true="--weighted-mean" false="" weightedWeightedMean}
  >>>
}