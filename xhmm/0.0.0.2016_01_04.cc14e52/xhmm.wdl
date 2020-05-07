version 1.0

task Xhmm {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    String referenceReferenceFastA
    String readReadDepths
    Boolean preparePrepareTargets
    Boolean mergeMergeGAtkDepths
    Boolean matrixMatrix
    String outputOutputMatrix
    Boolean pcPcA
    Boolean pcPcASaveMemory
    Boolean normalizeNormalize
    String normalizeNormalizeOutput
    String pcPcNormalizeMethod
    Int numNumPcToRemove
    String pvePveMeanFactor
    String pvePveContrib
    String pcPcAFiles
    Boolean discoverDiscover
    String xXCnv
    String discoverDiscoverSomeQualThresh
    String posteriorPosteriorFiles
    Boolean genotypeGenotype
    String gxGxCnv
    Boolean subSubSegments
    Int maxMaxTargetsInSubsegment
    String genotypeGenotypeQualThresholdWhenNoExact
    String mergeMergeVcf
    String mergeMergeVcfList
    String paramParamFile
    String maxMaxNormalizedReadDepthVal
    String maxMaxQualScore
    Int scoreScorePrecision
    String auxAuxXCnv
    Int auxAuxUpstreamPrintTArgs
    Int auxAuxDownstreamPrintTArgs
    String origOrigReadDepths
    String keepKeepSampleIds
    String vcfVcf
  }
  command <<<
    xhmm \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{if defined(referenceReferenceFastA) then ("--referenceFASTA " +  '"' + referenceReferenceFastA + '"') else ""} \
      ~{if defined(readReadDepths) then ("--readDepths " +  '"' + readReadDepths + '"') else ""} \
      ~{true="--prepareTargets" false="" preparePrepareTargets} \
      ~{true="--mergeGATKdepths" false="" mergeMergeGAtkDepths} \
      ~{true="--matrix" false="" matrixMatrix} \
      ~{if defined(outputOutputMatrix) then ("--outputMatrix " +  '"' + outputOutputMatrix + '"') else ""} \
      ~{true="--PCA" false="" pcPcA} \
      ~{true="--PCA_saveMemory" false="" pcPcASaveMemory} \
      ~{true="--normalize" false="" normalizeNormalize} \
      ~{if defined(normalizeNormalizeOutput) then ("--normalizeOutput " +  '"' + normalizeNormalizeOutput + '"') else ""} \
      ~{if defined(pcPcNormalizeMethod) then ("--PCnormalizeMethod " +  '"' + pcPcNormalizeMethod + '"') else ""} \
      ~{if defined(numNumPcToRemove) then ("--numPCtoRemove " +  '"' + numNumPcToRemove + '"') else ""} \
      ~{if defined(pvePveMeanFactor) then ("--PVE_mean_factor " +  '"' + pvePveMeanFactor + '"') else ""} \
      ~{if defined(pvePveContrib) then ("--PVE_contrib " +  '"' + pvePveContrib + '"') else ""} \
      ~{if defined(pcPcAFiles) then ("--PCAfiles " +  '"' + pcPcAFiles + '"') else ""} \
      ~{true="--discover" false="" discoverDiscover} \
      ~{if defined(xXCnv) then ("--xcnv " +  '"' + xXCnv + '"') else ""} \
      ~{if defined(discoverDiscoverSomeQualThresh) then ("--discoverSomeQualThresh " +  '"' + discoverDiscoverSomeQualThresh + '"') else ""} \
      ~{if defined(posteriorPosteriorFiles) then ("--posteriorFiles " +  '"' + posteriorPosteriorFiles + '"') else ""} \
      ~{true="--genotype" false="" genotypeGenotype} \
      ~{if defined(gxGxCnv) then ("--gxcnv " +  '"' + gxGxCnv + '"') else ""} \
      ~{true="--subsegments" false="" subSubSegments} \
      ~{if defined(maxMaxTargetsInSubsegment) then ("--maxTargetsInSubsegment " +  '"' + maxMaxTargetsInSubsegment + '"') else ""} \
      ~{if defined(genotypeGenotypeQualThresholdWhenNoExact) then ("--genotypeQualThresholdWhenNoExact " +  '"' + genotypeGenotypeQualThresholdWhenNoExact + '"') else ""} \
      ~{if defined(mergeMergeVcf) then ("--mergeVCF " +  '"' + mergeMergeVcf + '"') else ""} \
      ~{if defined(mergeMergeVcfList) then ("--mergeVCFlist " +  '"' + mergeMergeVcfList + '"') else ""} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""} \
      ~{if defined(maxMaxNormalizedReadDepthVal) then ("--maxNormalizedReadDepthVal " +  '"' + maxMaxNormalizedReadDepthVal + '"') else ""} \
      ~{if defined(maxMaxQualScore) then ("--maxQualScore " +  '"' + maxMaxQualScore + '"') else ""} \
      ~{if defined(scoreScorePrecision) then ("--scorePrecision " +  '"' + scoreScorePrecision + '"') else ""} \
      ~{if defined(auxAuxXCnv) then ("--aux_xcnv " +  '"' + auxAuxXCnv + '"') else ""} \
      ~{if defined(auxAuxUpstreamPrintTArgs) then ("--auxUpstreamPrintTargs " +  '"' + auxAuxUpstreamPrintTArgs + '"') else ""} \
      ~{if defined(auxAuxDownstreamPrintTArgs) then ("--auxDownstreamPrintTargs " +  '"' + auxAuxDownstreamPrintTArgs + '"') else ""} \
      ~{if defined(origOrigReadDepths) then ("--origReadDepths " +  '"' + origOrigReadDepths + '"') else ""} \
      ~{if defined(keepKeepSampleIds) then ("--keepSampleIDs " +  '"' + keepKeepSampleIds + '"') else ""} \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""}
  >>>
}