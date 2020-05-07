version 1.0

task PKiss {
  input {
    String modeMode
    Float absoluteAbsoluteDeviation
    Float relativeRelativeDeviation
    Int shapeShapeLevel
    Float lowLowProbFilter
    Float outputOutputLowProbFilter
    Int windowWindowSize
    Int windowWindowIncrement
    String strategyStrategy
    Int minMinHairpinLength
    Int maxMaxKnotSize
    Float hHPenalty
    Float kKPenalty
    Int allowAllowLp
    Float temperatureTemperature
    String paramParam
    String binBinPath
    String binBinPrefix
    Int probProbDecimals
    Int verboseVerbose
    String varnaVarna
  }
  command <<<
    pKiss \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(absoluteAbsoluteDeviation) then ("--absoluteDeviation " +  '"' + absoluteAbsoluteDeviation + '"') else ""} \
      ~{if defined(relativeRelativeDeviation) then ("--relativeDeviation " +  '"' + relativeRelativeDeviation + '"') else ""} \
      ~{if defined(shapeShapeLevel) then ("--shapeLevel " +  '"' + shapeShapeLevel + '"') else ""} \
      ~{if defined(lowLowProbFilter) then ("--lowProbFilter " +  '"' + lowLowProbFilter + '"') else ""} \
      ~{if defined(outputOutputLowProbFilter) then ("--outputLowProbFilter " +  '"' + outputOutputLowProbFilter + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--windowSize " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(windowWindowIncrement) then ("--windowIncrement " +  '"' + windowWindowIncrement + '"') else ""} \
      ~{if defined(strategyStrategy) then ("--strategy " +  '"' + strategyStrategy + '"') else ""} \
      ~{if defined(minMinHairpinLength) then ("--minHairpinLength " +  '"' + minMinHairpinLength + '"') else ""} \
      ~{if defined(maxMaxKnotSize) then ("--maxKnotSize " +  '"' + maxMaxKnotSize + '"') else ""} \
      ~{if defined(hHPenalty) then ("--Hpenalty " +  '"' + hHPenalty + '"') else ""} \
      ~{if defined(kKPenalty) then ("--Kpenalty " +  '"' + kKPenalty + '"') else ""} \
      ~{if defined(allowAllowLp) then ("--allowLP " +  '"' + allowAllowLp + '"') else ""} \
      ~{if defined(temperatureTemperature) then ("--temperature " +  '"' + temperatureTemperature + '"') else ""} \
      ~{if defined(paramParam) then ("--param " +  '"' + paramParam + '"') else ""} \
      ~{if defined(binBinPath) then ("--binPath " +  '"' + binBinPath + '"') else ""} \
      ~{if defined(binBinPrefix) then ("--binPrefix " +  '"' + binBinPrefix + '"') else ""} \
      ~{if defined(probProbDecimals) then ("--probDecimals " +  '"' + probProbDecimals + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{if defined(varnaVarna) then ("--varna " +  '"' + varnaVarna + '"') else ""}
  >>>
}