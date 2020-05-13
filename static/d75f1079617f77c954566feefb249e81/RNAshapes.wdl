version 1.0

task RNAshapes {
  input {
    String modeMode
    Float absoluteAbsoluteDeviation
    Float relativeRelativeDeviation
    Int shapeShapeLevel
    Float lowLowProbFilter
    Float outputOutputLowProbFilter
    Int numNumSamples
    Int showShowSamples
    Int windowWindowSize
    Int windowWindowIncrement
    Int structureStructureProbs
    String grammarGrammar
    Float temperatureTemperature
    String paramParam
    Int allowAllowLp
    Float bpBpPmThreshold
    String dotplotDotplot
    Int pngPng
    String binBinPath
    String binBinPrefix
    Int probProbDecimals
    Int verboseVerbose
    String varnaVarna
    Float slopeSlope
    Float interceptIntercept
    String normalizationNormalization
    String modifierModifier
    String reactivityReactivityFilename
    String? outsideOutside
    String? meMeA
    String? probingProbing
  }
  command <<<
    RNAshapes \
      ~{outsideOutside} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(absoluteAbsoluteDeviation) then ("--absoluteDeviation " +  '"' + absoluteAbsoluteDeviation + '"') else ""} \
      ~{if defined(relativeRelativeDeviation) then ("--relativeDeviation " +  '"' + relativeRelativeDeviation + '"') else ""} \
      ~{if defined(shapeShapeLevel) then ("--shapeLevel " +  '"' + shapeShapeLevel + '"') else ""} \
      ~{if defined(lowLowProbFilter) then ("--lowProbFilter " +  '"' + lowLowProbFilter + '"') else ""} \
      ~{if defined(outputOutputLowProbFilter) then ("--outputLowProbFilter " +  '"' + outputOutputLowProbFilter + '"') else ""} \
      ~{if defined(numNumSamples) then ("--numSamples " +  '"' + numNumSamples + '"') else ""} \
      ~{if defined(showShowSamples) then ("--showSamples " +  '"' + showShowSamples + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--windowSize " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(windowWindowIncrement) then ("--windowIncrement " +  '"' + windowWindowIncrement + '"') else ""} \
      ~{if defined(structureStructureProbs) then ("--structureProbs " +  '"' + structureStructureProbs + '"') else ""} \
      ~{if defined(grammarGrammar) then ("--grammar " +  '"' + grammarGrammar + '"') else ""} \
      ~{if defined(temperatureTemperature) then ("--temperature " +  '"' + temperatureTemperature + '"') else ""} \
      ~{if defined(paramParam) then ("--param " +  '"' + paramParam + '"') else ""} \
      ~{if defined(allowAllowLp) then ("--allowLP " +  '"' + allowAllowLp + '"') else ""} \
      ~{if defined(bpBpPmThreshold) then ("--bppmThreshold " +  '"' + bpBpPmThreshold + '"') else ""} \
      ~{if defined(dotplotDotplot) then ("--dotplot " +  '"' + dotplotDotplot + '"') else ""} \
      ~{if defined(pngPng) then ("--png " +  '"' + pngPng + '"') else ""} \
      ~{if defined(binBinPath) then ("--binPath " +  '"' + binBinPath + '"') else ""} \
      ~{if defined(binBinPrefix) then ("--binPrefix " +  '"' + binBinPrefix + '"') else ""} \
      ~{if defined(probProbDecimals) then ("--probDecimals " +  '"' + probProbDecimals + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{if defined(varnaVarna) then ("--varna " +  '"' + varnaVarna + '"') else ""} \
      ~{if defined(slopeSlope) then ("--slope " +  '"' + slopeSlope + '"') else ""} \
      ~{if defined(interceptIntercept) then ("--intercept " +  '"' + interceptIntercept + '"') else ""} \
      ~{if defined(normalizationNormalization) then ("--normalization " +  '"' + normalizationNormalization + '"') else ""} \
      ~{if defined(modifierModifier) then ("--modifier " +  '"' + modifierModifier + '"') else ""} \
      ~{if defined(reactivityReactivityFilename) then ("--reactivityfilename " +  '"' + reactivityReactivityFilename + '"') else ""} \
      ~{meMeA} \
      ~{probingProbing}
  >>>
}