version 1.0

task RtgHelpSamplereplay {
  input {
    File inputInput
    String outputOutput
    String referenceReference
    String sampleSample
  }
  command <<<
    rtg help samplereplay \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""}
  >>>
}