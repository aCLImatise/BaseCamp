version 1.0

task MagpurifyTetraFreqOutOut {
  input {
    String cutCutOff
    Boolean weightedWeightedMean
    String? fnaFna
    String? outOut
  }
  command <<<
    magpurify tetra-freq out out \
      ~{fnaFna} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{true="--weighted-mean" false="" weightedWeightedMean} \
      ~{outOut}
  >>>
}