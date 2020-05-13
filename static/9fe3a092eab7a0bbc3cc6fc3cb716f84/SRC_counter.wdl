version 1.0

task SRCCounter {
  input {
    Boolean nbNbCores
    Boolean verboseVerbose
    Boolean versionVersion
    Boolean graphGraph
    Boolean bankBank
    Boolean queryQuery
    Boolean outOut
    Boolean keepKeepLowComplexity
    Boolean gammaGamma
    Boolean fingerprintFingerprintSize
    Boolean coreCore
    Boolean coverageCoverageThreshold
    Boolean windowsWindowsSize
  }
  command <<<
    SRC_counter \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-graph" false="" graphGraph} \
      ~{true="-bank" false="" bankBank} \
      ~{true="-query" false="" queryQuery} \
      ~{true="-out" false="" outOut} \
      ~{true="-keep_low_complexity" false="" keepKeepLowComplexity} \
      ~{true="-gamma" false="" gammaGamma} \
      ~{true="-fingerprint_size" false="" fingerprintFingerprintSize} \
      ~{true="-core" false="" coreCore} \
      ~{true="-coverage_threshold" false="" coverageCoverageThreshold} \
      ~{true="-windows_size" false="" windowsWindowsSize}
  >>>
}