version 1.0

task GdtoolsGD2VCF {
  input {
    String referenceReference
    String outputOutput
  }
  command <<<
    gdtools GD2VCF \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}