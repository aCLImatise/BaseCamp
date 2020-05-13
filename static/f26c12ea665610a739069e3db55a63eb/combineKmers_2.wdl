version 1.0

task CombineKmers2 {
  input {
    Boolean rR
    Boolean oO
    String minMinSamples
  }
  command <<<
    combineKmers 2 \
      ~{true="-r" false="" rR} \
      ~{true="-o" false="" oO} \
      ~{if defined(minMinSamples) then ("--min_samples " +  '"' + minMinSamples + '"') else ""}
  >>>
}