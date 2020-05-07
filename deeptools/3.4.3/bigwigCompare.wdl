version 1.0

task BigwigCompare {
  input {
    String bigwig1Bigwig1
    String bigwig2Bigwig2
    String scaleScaleFactors
    Array[String]+ pseudoPseudoCount
    Boolean skipSkipZeroOverZero
    String operationOperation
    Boolean skipSkipNoncoveredRegions
    Int numberNumberOfProcessors
    Boolean verboseVerbose
    File outOutFilename
    String outOutFileFormat
    String deepDeepBlueUrl
    String userUserKey
    String deepDeepBlueTempdir
    Boolean deepDeepBlueKeepTemp
  }
  command <<<
    bigwigCompare \
      ~{if defined(bigwig1Bigwig1) then ("--bigwig1 " +  '"' + bigwig1Bigwig1 + '"') else ""} \
      ~{if defined(bigwig2Bigwig2) then ("--bigwig2 " +  '"' + bigwig2Bigwig2 + '"') else ""} \
      ~{if defined(scaleScaleFactors) then ("--scaleFactors " +  '"' + scaleScaleFactors + '"') else ""} \
      ~{if defined(pseudoPseudoCount) then ("--pseudocount " +  '"' + pseudoPseudoCount + '"') else ""} \
      ~{true="--skipZeroOverZero" false="" skipSkipZeroOverZero} \
      ~{if defined(operationOperation) then ("--operation " +  '"' + operationOperation + '"') else ""} \
      ~{true="--skipNonCoveredRegions" false="" skipSkipNoncoveredRegions} \
      ~{if defined(numberNumberOfProcessors) then ("--numberOfProcessors " +  '"' + numberNumberOfProcessors + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(outOutFileFormat) then ("--outFileFormat " +  '"' + outOutFileFormat + '"') else ""} \
      ~{if defined(deepDeepBlueUrl) then ("--deepBlueURL " +  '"' + deepDeepBlueUrl + '"') else ""} \
      ~{if defined(userUserKey) then ("--userKey " +  '"' + userUserKey + '"') else ""} \
      ~{if defined(deepDeepBlueTempdir) then ("--deepBlueTempDir " +  '"' + deepDeepBlueTempdir + '"') else ""} \
      ~{true="--deepBlueKeepTemp" false="" deepDeepBlueKeepTemp}
  >>>
}