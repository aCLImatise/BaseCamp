version 1.0

task CombineKmers {
  input {
    String sS
    String oO
    Boolean minMinSamples
  }
  command <<<
    combineKmers \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--min_samples" false="" minMinSamples}
  >>>
}