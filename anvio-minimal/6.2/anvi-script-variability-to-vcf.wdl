version 1.0

task AnviScriptVariabilityToVcf {
  input {
    File inputInput
    File outputOutputFile
  }
  command <<<
    anvi-script-variability-to-vcf \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}