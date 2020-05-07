version 1.0

task DimspyRemoveSamples {
  input {
    String inputInput
    String outputOutput
    String sampleSampleNames
  }
  command <<<
    dimspy remove-samples \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(sampleSampleNames) then ("--sample-names " +  '"' + sampleSampleNames + '"') else ""}
  >>>
}