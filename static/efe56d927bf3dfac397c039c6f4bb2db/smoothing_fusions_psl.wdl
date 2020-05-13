version 1.0

task SmoothingFusionsPsl.py {
  input {
    String inputInput
    String wiggleWiggle
    String outputOutput
  }
  command <<<
    smoothing_fusions_psl.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(wiggleWiggle) then ("--wiggle " +  '"' + wiggleWiggle + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}