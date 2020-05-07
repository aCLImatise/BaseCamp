version 1.0

task RtgHelpVcfeval {
  input {
    File baselineBaseline
    File bedBedRegions
    File callsCalls
    File evaluationEvaluationRegions
    String outputOutput
    String regionRegion
    String templateTemplate
    Boolean allAllRecords
    Boolean decomposeDecompose
    Boolean refRefOverlap
    String sampleSample
    Boolean squashSquashPloidy
    Float atAtPrecision
    Float atAtSensitivity
    Boolean noNoRoc
    String outputOutputMode
    String sortSortOrder
    String vcfVcfScoreField
    Boolean noNoGzip
    Int threadsThreads
  }
  command <<<
    rtg help vcfeval \
      ~{if defined(baselineBaseline) then ("--baseline " +  '"' + baselineBaseline + '"') else ""} \
      ~{if defined(bedBedRegions) then ("--bed-regions " +  '"' + bedBedRegions + '"') else ""} \
      ~{if defined(callsCalls) then ("--calls " +  '"' + callsCalls + '"') else ""} \
      ~{if defined(evaluationEvaluationRegions) then ("--evaluation-regions " +  '"' + evaluationEvaluationRegions + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(templateTemplate) then ("--template " +  '"' + templateTemplate + '"') else ""} \
      ~{true="--all-records" false="" allAllRecords} \
      ~{true="--decompose" false="" decomposeDecompose} \
      ~{true="--ref-overlap" false="" refRefOverlap} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{true="--squash-ploidy" false="" squashSquashPloidy} \
      ~{if defined(atAtPrecision) then ("--at-precision " +  '"' + atAtPrecision + '"') else ""} \
      ~{if defined(atAtSensitivity) then ("--at-sensitivity " +  '"' + atAtSensitivity + '"') else ""} \
      ~{true="--no-roc" false="" noNoRoc} \
      ~{if defined(outputOutputMode) then ("--output-mode " +  '"' + outputOutputMode + '"') else ""} \
      ~{if defined(sortSortOrder) then ("--sort-order " +  '"' + sortSortOrder + '"') else ""} \
      ~{if defined(vcfVcfScoreField) then ("--vcf-score-field " +  '"' + vcfVcfScoreField + '"') else ""} \
      ~{true="--no-gzip" false="" noNoGzip} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}