version 1.0

task SecaprLocusSelection {
  input {
    String inputInput
    String outputOutput
    String nN
    String readReadCov
    String referenceReference
  }
  command <<<
    secapr locus_selection \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(nN) then ("--n " +  '"' + nN + '"') else ""} \
      ~{if defined(readReadCov) then ("--read_cov " +  '"' + readReadCov + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""}
  >>>
}