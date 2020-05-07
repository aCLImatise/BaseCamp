version 1.0

task MagpurifyGcContent {
  input {
    String cutCutOff
    Boolean weightedWeightedMean
  }
  command <<<
    magpurify gc-content \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{true="--weighted-mean" false="" weightedWeightedMean}
  >>>
}