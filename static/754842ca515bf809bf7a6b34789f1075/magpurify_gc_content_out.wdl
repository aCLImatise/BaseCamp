version 1.0

task MagpurifyGcContentOut {
  input {
    String cutCutOff
    Boolean weightedWeightedMean
  }
  command <<<
    magpurify gc-content out \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{true="--weighted-mean" false="" weightedWeightedMean}
  >>>
}