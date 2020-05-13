version 1.0

task MagpurifyTetraFreqOutFna {
  input {
    String cutCutOff
    Boolean weightedWeightedMean
    String? fnaFna
    String? outOut
  }
  command <<<
    magpurify tetra-freq out fna \
      ~{fnaFna} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{true="--weighted-mean" false="" weightedWeightedMean} \
      ~{outOut}
  >>>
}