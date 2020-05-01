version 1.0

task Neptune {
  input {
    Array[String]+ inclusionInclusion
    Array[String]+ exclusionExclusion
    String outputOutput
    String kmKmEr
    String organizationOrganization
    String filterFilterPercent
    String filterFilterLength
    String seedSeedSize
    Array[String]+ referenceReference
    String referenceReferenceSize
    String rateRate
    String inInHits
    String exExHits
    String gapGap
    Int sizeSize
    String gcGcContent
    String confidenceConfidence
    String parallelizationParallelization
    Boolean drmaaDrmaa
    String defaultDefaultSpecification
    String countCountSpecification
    String aggregateAggregateSpecification
    String extractExtractSpecification
    String databaseDatabaseSpecification
    String filterFilterSpecification
    String consolidateConsolidateSpecification
  }
  command <<<
    neptune \
      ~{if defined(inclusionInclusion) then ("--inclusion " +  '"' + inclusionInclusion + '"') else ""} \
      ~{if defined(exclusionExclusion) then ("--exclusion " +  '"' + exclusionExclusion + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(organizationOrganization) then ("--organization " +  '"' + organizationOrganization + '"') else ""} \
      ~{if defined(filterFilterPercent) then ("--filter-percent " +  '"' + filterFilterPercent + '"') else ""} \
      ~{if defined(filterFilterLength) then ("--filter-length " +  '"' + filterFilterLength + '"') else ""} \
      ~{if defined(seedSeedSize) then ("--seed-size " +  '"' + seedSeedSize + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(referenceReferenceSize) then ("--reference-size " +  '"' + referenceReferenceSize + '"') else ""} \
      ~{if defined(rateRate) then ("--rate " +  '"' + rateRate + '"') else ""} \
      ~{if defined(inInHits) then ("--inhits " +  '"' + inInHits + '"') else ""} \
      ~{if defined(exExHits) then ("--exhits " +  '"' + exExHits + '"') else ""} \
      ~{if defined(gapGap) then ("--gap " +  '"' + gapGap + '"') else ""} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{if defined(gcGcContent) then ("--gc-content " +  '"' + gcGcContent + '"') else ""} \
      ~{if defined(confidenceConfidence) then ("--confidence " +  '"' + confidenceConfidence + '"') else ""} \
      ~{if defined(parallelizationParallelization) then ("--parallelization " +  '"' + parallelizationParallelization + '"') else ""} \
      ~{true="--drmaa" false="" drmaaDrmaa} \
      ~{if defined(defaultDefaultSpecification) then ("--default-specification " +  '"' + defaultDefaultSpecification + '"') else ""} \
      ~{if defined(countCountSpecification) then ("--count-specification " +  '"' + countCountSpecification + '"') else ""} \
      ~{if defined(aggregateAggregateSpecification) then ("--aggregate-specification " +  '"' + aggregateAggregateSpecification + '"') else ""} \
      ~{if defined(extractExtractSpecification) then ("--extract-specification " +  '"' + extractExtractSpecification + '"') else ""} \
      ~{if defined(databaseDatabaseSpecification) then ("--database-specification " +  '"' + databaseDatabaseSpecification + '"') else ""} \
      ~{if defined(filterFilterSpecification) then ("--filter-specification " +  '"' + filterFilterSpecification + '"') else ""} \
      ~{if defined(consolidateConsolidateSpecification) then ("--consolidate-specification " +  '"' + consolidateConsolidateSpecification + '"') else ""}
  >>>
}