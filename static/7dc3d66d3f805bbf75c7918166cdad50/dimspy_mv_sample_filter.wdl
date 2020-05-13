version 1.0

task DimspyMvSampleFilter {
  input {
    String inputInput
    String outputOutput
    Int maxMaxFraction
  }
  command <<<
    dimspy mv-sample-filter \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(maxMaxFraction) then ("--max-fraction " +  '"' + maxMaxFraction + '"') else ""}
  >>>
}