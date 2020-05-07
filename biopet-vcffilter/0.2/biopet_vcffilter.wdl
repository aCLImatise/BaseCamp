version 1.0

task BiopetVcffilter {
  input {
    String logLogLevel
    File inputInputVcf
    File outputOutputVcf
    File invertedInvertedOutputVcf
    Int minMinSampleDepth
    Int minMinTotalDepth
    Int minMinAlternateDepth
    Int minMinSamplesPass
    Boolean restRestOdom
    Boolean trioTrioCompound
    String deDeNovoInSample
    Boolean deDeNovoTrio
    Boolean trioTrioLossOfHet
    String mustMustHaveVariant
    String mustMustNotHaveVariant
    String calledCalledIn
    Boolean mustMustHaveGenotype
    Boolean diffDiffGenotype
    Boolean filterFilterHetVarToHomVar
    Boolean filterFilterRefCalls
    Boolean filterFilterNoCalls
    Boolean uniqueUniqueOnly
    Boolean sharedSharedOnly
    String minMinCalled
    String minMinQualScore
    String idId
    String idIdFile
    String minMinGenomeQuality
    String advancedAdvancedGroups
    String minMinAvgVariantGq
    Boolean infoInfoArrayMustContain
  }
  command <<<
    biopet-vcffilter \
      ~{if defined(logLogLevel) then ("--log_level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(inputInputVcf) then ("--inputVcf " +  '"' + inputInputVcf + '"') else ""} \
      ~{if defined(outputOutputVcf) then ("--outputVcf " +  '"' + outputOutputVcf + '"') else ""} \
      ~{if defined(invertedInvertedOutputVcf) then ("--invertedOutputVcf " +  '"' + invertedInvertedOutputVcf + '"') else ""} \
      ~{if defined(minMinSampleDepth) then ("--minSampleDepth " +  '"' + minMinSampleDepth + '"') else ""} \
      ~{if defined(minMinTotalDepth) then ("--minTotalDepth " +  '"' + minMinTotalDepth + '"') else ""} \
      ~{if defined(minMinAlternateDepth) then ("--minAlternateDepth " +  '"' + minMinAlternateDepth + '"') else ""} \
      ~{if defined(minMinSamplesPass) then ("--minSamplesPass " +  '"' + minMinSamplesPass + '"') else ""} \
      ~{true="--resToDom" false="" restRestOdom} \
      ~{true="--trioCompound" false="" trioTrioCompound} \
      ~{if defined(deDeNovoInSample) then ("--deNovoInSample " +  '"' + deDeNovoInSample + '"') else ""} \
      ~{true="--deNovoTrio" false="" deDeNovoTrio} \
      ~{true="--trioLossOfHet" false="" trioTrioLossOfHet} \
      ~{if defined(mustMustHaveVariant) then ("--mustHaveVariant " +  '"' + mustMustHaveVariant + '"') else ""} \
      ~{if defined(mustMustNotHaveVariant) then ("--mustNotHaveVariant " +  '"' + mustMustNotHaveVariant + '"') else ""} \
      ~{if defined(calledCalledIn) then ("--calledIn " +  '"' + calledCalledIn + '"') else ""} \
      ~{true="--mustHaveGenotype" false="" mustMustHaveGenotype} \
      ~{true="--diffGenotype" false="" diffDiffGenotype} \
      ~{true="--filterHetVarToHomVar" false="" filterFilterHetVarToHomVar} \
      ~{true="--filterRefCalls" false="" filterFilterRefCalls} \
      ~{true="--filterNoCalls" false="" filterFilterNoCalls} \
      ~{true="--uniqueOnly" false="" uniqueUniqueOnly} \
      ~{true="--sharedOnly" false="" sharedSharedOnly} \
      ~{if defined(minMinCalled) then ("--minCalled " +  '"' + minMinCalled + '"') else ""} \
      ~{if defined(minMinQualScore) then ("--minQualScore " +  '"' + minMinQualScore + '"') else ""} \
      ~{if defined(idId) then ("--id " +  '"' + idId + '"') else ""} \
      ~{if defined(idIdFile) then ("--idFile " +  '"' + idIdFile + '"') else ""} \
      ~{if defined(minMinGenomeQuality) then ("--minGenomeQuality " +  '"' + minMinGenomeQuality + '"') else ""} \
      ~{if defined(advancedAdvancedGroups) then ("--advancedGroups " +  '"' + advancedAdvancedGroups + '"') else ""} \
      ~{if defined(minMinAvgVariantGq) then ("--minAvgVariantGQ " +  '"' + minMinAvgVariantGq + '"') else ""} \
      ~{true="--infoArrayMustContain" false="" infoInfoArrayMustContain}
  >>>
}