version 1.0

task GdtoolsCOUNT {
  input {
    Boolean verboseVerbose
    String referenceReference
    String outputOutput
    String detailedDetailedOutput
    Boolean calculateCalculateGenomeSize
    Boolean baseBaseSubstitutionStatistics
    Boolean countCountPolymorphisms
  }
  command <<<
    gdtools COUNT \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(detailedDetailedOutput) then ("--detailed-output " +  '"' + detailedDetailedOutput + '"') else ""} \
      ~{true="--calculate-genome-size" false="" calculateCalculateGenomeSize} \
      ~{true="--base-substitution-statistics" false="" baseBaseSubstitutionStatistics} \
      ~{true="--count-polymorphisms" false="" countCountPolymorphisms}
  >>>
}