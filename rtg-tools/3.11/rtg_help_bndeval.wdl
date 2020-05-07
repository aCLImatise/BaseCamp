version 1.0

task RtgHelpBndeval {
  input {
    File baselineBaseline
    File bedBedRegions
    File callsCalls
    String outputOutput
    String regionRegion
    Boolean allAllRecords
    Boolean bidirectionalBidirectional
    Int toleranceTolerance
    Boolean noNoRoc
    String outputOutputMode
    String sortSortOrder
    String vcfVcfScoreField
    Boolean noNoGzip
  }
  command <<<
    rtg help bndeval \
      ~{if defined(baselineBaseline) then ("--baseline " +  '"' + baselineBaseline + '"') else ""} \
      ~{if defined(bedBedRegions) then ("--bed-regions " +  '"' + bedBedRegions + '"') else ""} \
      ~{if defined(callsCalls) then ("--calls " +  '"' + callsCalls + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{true="--all-records" false="" allAllRecords} \
      ~{true="--bidirectional" false="" bidirectionalBidirectional} \
      ~{if defined(toleranceTolerance) then ("--tolerance " +  '"' + toleranceTolerance + '"') else ""} \
      ~{true="--no-roc" false="" noNoRoc} \
      ~{if defined(outputOutputMode) then ("--output-mode " +  '"' + outputOutputMode + '"') else ""} \
      ~{if defined(sortSortOrder) then ("--sort-order " +  '"' + sortSortOrder + '"') else ""} \
      ~{if defined(vcfVcfScoreField) then ("--vcf-score-field " +  '"' + vcfVcfScoreField + '"') else ""} \
      ~{true="--no-gzip" false="" noNoGzip}
  >>>
}