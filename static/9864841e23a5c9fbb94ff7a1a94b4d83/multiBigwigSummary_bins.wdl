version 1.0

task MultiBigwigSummaryBins {
  input {
    File bwBwFiles
    String outOutFilename
    Int numberNumberOfProcessors
    Boolean verboseVerbose
    File outOutRawCounts
    String deepDeepBlueUrl
    String userUserKey
    String deepDeepBlueTempdir
    Boolean deepDeepBlueKeepTemp
    File? fileFile2bw
  }
  command <<<
    multiBigwigSummary bins \
      ~{fileFile2bw} \
      ~{if defined(bwBwFiles) then ("--bwfiles " +  '"' + bwBwFiles + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(numberNumberOfProcessors) then ("--numberOfProcessors " +  '"' + numberNumberOfProcessors + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(outOutRawCounts) then ("--outRawCounts " +  '"' + outOutRawCounts + '"') else ""} \
      ~{if defined(deepDeepBlueUrl) then ("--deepBlueURL " +  '"' + deepDeepBlueUrl + '"') else ""} \
      ~{if defined(userUserKey) then ("--userKey " +  '"' + userUserKey + '"') else ""} \
      ~{if defined(deepDeepBlueTempdir) then ("--deepBlueTempDir " +  '"' + deepDeepBlueTempdir + '"') else ""} \
      ~{true="--deepBlueKeepTemp" false="" deepDeepBlueKeepTemp}
  >>>
}