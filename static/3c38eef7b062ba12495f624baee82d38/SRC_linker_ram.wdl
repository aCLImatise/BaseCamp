version 1.0

task SRCLinkerRam {
  input {
    Boolean nbNbCores
    Boolean verboseVerbose
    Boolean versionVersion
    Boolean graphGraph
    Boolean bankBank
    Boolean queryQuery
    Boolean outOut
    Boolean kmKmErThreshold
    Boolean windowsWindowsSize
    Boolean gammaGamma
    Boolean fingerprintFingerprintSize
    Boolean coreCore
    Boolean noNoSharingDetail
    Boolean keepKeepLowComplexity
    Boolean zeroZeroDensityWindowsSize
    Boolean zeroZeroDensityThreshold
  }
  command <<<
    SRC_linker_ram \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-graph" false="" graphGraph} \
      ~{true="-bank" false="" bankBank} \
      ~{true="-query" false="" queryQuery} \
      ~{true="-out" false="" outOut} \
      ~{true="-kmer_threshold" false="" kmKmErThreshold} \
      ~{true="-windows_size" false="" windowsWindowsSize} \
      ~{true="-gamma" false="" gammaGamma} \
      ~{true="-fingerprint_size" false="" fingerprintFingerprintSize} \
      ~{true="-core" false="" coreCore} \
      ~{true="-no_sharing_detail" false="" noNoSharingDetail} \
      ~{true="-keep_low_complexity" false="" keepKeepLowComplexity} \
      ~{true="-zero_density_windows_size" false="" zeroZeroDensityWindowsSize} \
      ~{true="-zero_density_threshold" false="" zeroZeroDensityThreshold}
  >>>
}