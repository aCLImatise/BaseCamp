version 1.0

task SvtoolsVcftobedpe {
  input {
    String inputInput
    String outputOutput
    String confidenceConfidence
    String? vcfVcfToBeDpe
  }
  command <<<
    svtools vcftobedpe \
      ~{vcfVcfToBeDpe} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(confidenceConfidence) then ("--confidence " +  '"' + confidenceConfidence + '"') else ""}
  >>>
}