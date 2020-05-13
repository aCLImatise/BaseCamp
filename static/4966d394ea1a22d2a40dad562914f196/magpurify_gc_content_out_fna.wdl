version 1.0

task MagpurifyGcContentOutFna {
  input {
    String cutCutOff
    Boolean weightedWeightedMean
    String? fnaFna
    String? outOut
  }
  command <<<
    magpurify gc-content out fna \
      ~{fnaFna} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{true="--weighted-mean" false="" weightedWeightedMean} \
      ~{outOut}
  >>>
}