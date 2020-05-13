version 1.0

task MagpurifyGcContentOutOut {
  input {
    String cutCutOff
    Boolean weightedWeightedMean
    String? fnaFna
    String? outOut
  }
  command <<<
    magpurify gc-content out out \
      ~{fnaFna} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{true="--weighted-mean" false="" weightedWeightedMean} \
      ~{outOut}
  >>>
}