version 1.0

task BamSieve {
  input {
    String logLogFile
    String logLogLevel
    Boolean debugDebug
    Boolean quietQuiet
    Boolean verboseVerbose
    Boolean showShowZMws
    String whitelistWhitelist
    String blacklistBlacklist
    String percentagePercentage
    String countCount
    String seedSeed
    Boolean ignoreIgnoreMetadata
    Boolean relativeRelative
    Boolean anonymizeAnonymize
    Boolean barcodesBarcodes
    Boolean sampleSampleScraps
    Boolean keepKeepUuid
    String? inputInputBam
    String? outputOutputBam
  }
  command <<<
    bamSieve \
      ~{inputInputBam} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--show-zmws" false="" showShowZMws} \
      ~{if defined(whitelistWhitelist) then ("--whitelist " +  '"' + whitelistWhitelist + '"') else ""} \
      ~{if defined(blacklistBlacklist) then ("--blacklist " +  '"' + blacklistBlacklist + '"') else ""} \
      ~{if defined(percentagePercentage) then ("--percentage " +  '"' + percentagePercentage + '"') else ""} \
      ~{if defined(countCount) then ("--count " +  '"' + countCount + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--ignore-metadata" false="" ignoreIgnoreMetadata} \
      ~{true="--relative" false="" relativeRelative} \
      ~{true="--anonymize" false="" anonymizeAnonymize} \
      ~{true="--barcodes" false="" barcodesBarcodes} \
      ~{true="--sample-scraps" false="" sampleSampleScraps} \
      ~{true="--keep-uuid" false="" keepKeepUuid} \
      ~{outputOutputBam}
  >>>
}