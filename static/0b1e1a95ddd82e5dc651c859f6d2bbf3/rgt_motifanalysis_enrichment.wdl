version 1.0

task RgtMotifanalysisEnrichment {
  input {
    String organismOrganism
    File matchingMatchingLocation
    File useUseOnlyMotifs
    File inputInputMatrix
    Float multipleMultipleTestAlpha
    Array[File]+ motifMotifDbs
    String filterFilter
    String filterFilterType
    Boolean logoLogoCopy
    Boolean logoLogoEmbed
    Int promoterPromoterLength
    Int maximumMaximumAssociationLength
    Boolean excludeExcludeTargetGenes
    File outputOutputLocation
    Float printPrintThresh
    Boolean bigBigBed
  }
  command <<<
    rgt-motifanalysis enrichment \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(matchingMatchingLocation) then ("--matching-location " +  '"' + matchingMatchingLocation + '"') else ""} \
      ~{if defined(useUseOnlyMotifs) then ("--use-only-motifs " +  '"' + useUseOnlyMotifs + '"') else ""} \
      ~{if defined(inputInputMatrix) then ("--input-matrix " +  '"' + inputInputMatrix + '"') else ""} \
      ~{if defined(multipleMultipleTestAlpha) then ("--multiple-test-alpha " +  '"' + multipleMultipleTestAlpha + '"') else ""} \
      ~{if defined(motifMotifDbs) then ("--motif-dbs " +  '"' + motifMotifDbs + '"') else ""} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(filterFilterType) then ("--filter-type " +  '"' + filterFilterType + '"') else ""} \
      ~{true="--logo-copy" false="" logoLogoCopy} \
      ~{true="--logo-embed" false="" logoLogoEmbed} \
      ~{if defined(promoterPromoterLength) then ("--promoter-length " +  '"' + promoterPromoterLength + '"') else ""} \
      ~{if defined(maximumMaximumAssociationLength) then ("--maximum-association-length " +  '"' + maximumMaximumAssociationLength + '"') else ""} \
      ~{true="--exclude-target-genes" false="" excludeExcludeTargetGenes} \
      ~{if defined(outputOutputLocation) then ("--output-location " +  '"' + outputOutputLocation + '"') else ""} \
      ~{if defined(printPrintThresh) then ("--print-thresh " +  '"' + printPrintThresh + '"') else ""} \
      ~{true="--bigbed" false="" bigBigBed}
  >>>
}