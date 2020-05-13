version 1.0

task MotifFitD {
  input {
    String epsEps
    Int minMinSamples
  }
  command <<<
    motif fit D \
      ~{if defined(epsEps) then ("--eps " +  '"' + epsEps + '"') else ""} \
      ~{if defined(minMinSamples) then ("--min-samples " +  '"' + minMinSamples + '"') else ""}
  >>>
}