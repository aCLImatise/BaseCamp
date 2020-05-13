version 1.0

task SecaprPhaseAlleles {
  input {
    String inputInput
    String outputOutput
    Int minMinCoverage
    String referenceReference
  }
  command <<<
    secapr phase_alleles \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(minMinCoverage) then ("--min_coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""}
  >>>
}