version 1.0

task Vcftobedpe {
  input {
    String inputInput
    String outputOutput
    String confidenceConfidence
  }
  command <<<
    vcftobedpe \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(confidenceConfidence) then ("--confidence " +  '"' + confidenceConfidence + '"') else ""}
  >>>
}