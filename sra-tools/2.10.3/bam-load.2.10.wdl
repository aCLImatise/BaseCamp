version 1.0

task BamLoad.2.10.3 {
  input {
    File outputOutput
    File inputInput
    File configConfig
    File headerHeader
    File tmpfsTmpfs
    File unalignedUnaligned
    Boolean acceptAcceptDups
    Boolean acceptAcceptNoMatch
    File noNoMatchLog
    String qualQualQuant
    String minMinMapq
    String cacheCacheSize
    Boolean noNoCs
    String minimumMinimumMatch
    Boolean noNoSecondary
    Boolean unsortedUnsorted
    Boolean sortedSorted
    Boolean noNoVerify
    Boolean onlyOnlyVerify
    Boolean useUseQual
    Boolean refRefConfig
    String refRefFilter
    String editEditAlignedQual
    Boolean keepKeepMismatchQual
    String maxMaxRecCount
    String maxMaxErrCount
    File refRefFile
    Boolean tiTi
    String maxMaxWarningDupFlag
    Boolean acceptAcceptHardClip
    Boolean allowAllowMultiMap
    Boolean makeMakeSpotsWithSecondary
    Boolean deferDeferSecondary
    String xmlXmlLog
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
    String? bamBamFile
  }
  command <<<
    bam-load.2.10.3 \
      ~{bamBamFile} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(headerHeader) then ("--header " +  '"' + headerHeader + '"') else ""} \
      ~{if defined(tmpfsTmpfs) then ("--tmpfs " +  '"' + tmpfsTmpfs + '"') else ""} \
      ~{if defined(unalignedUnaligned) then ("--unaligned " +  '"' + unalignedUnaligned + '"') else ""} \
      ~{true="--accept-dups" false="" acceptAcceptDups} \
      ~{true="--accept-nomatch" false="" acceptAcceptNoMatch} \
      ~{if defined(noNoMatchLog) then ("--nomatch-log " +  '"' + noNoMatchLog + '"') else ""} \
      ~{if defined(qualQualQuant) then ("--qual-quant " +  '"' + qualQualQuant + '"') else ""} \
      ~{if defined(minMinMapq) then ("--min-mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(cacheCacheSize) then ("--cache-size " +  '"' + cacheCacheSize + '"') else ""} \
      ~{true="--no-cs" false="" noNoCs} \
      ~{if defined(minimumMinimumMatch) then ("--minimum-match " +  '"' + minimumMinimumMatch + '"') else ""} \
      ~{true="--no-secondary" false="" noNoSecondary} \
      ~{true="--unsorted" false="" unsortedUnsorted} \
      ~{true="--sorted" false="" sortedSorted} \
      ~{true="--no-verify" false="" noNoVerify} \
      ~{true="--only-verify" false="" onlyOnlyVerify} \
      ~{true="--use-QUAL" false="" useUseQual} \
      ~{true="--ref-config" false="" refRefConfig} \
      ~{if defined(refRefFilter) then ("--ref-filter " +  '"' + refRefFilter + '"') else ""} \
      ~{if defined(editEditAlignedQual) then ("--edit-aligned-qual " +  '"' + editEditAlignedQual + '"') else ""} \
      ~{true="--keep-mismatch-qual" false="" keepKeepMismatchQual} \
      ~{if defined(maxMaxRecCount) then ("--max-rec-count " +  '"' + maxMaxRecCount + '"') else ""} \
      ~{if defined(maxMaxErrCount) then ("--max-err-count " +  '"' + maxMaxErrCount + '"') else ""} \
      ~{if defined(refRefFile) then ("--ref-file " +  '"' + refRefFile + '"') else ""} \
      ~{true="--TI" false="" tiTi} \
      ~{if defined(maxMaxWarningDupFlag) then ("--max-warning-dup-flag " +  '"' + maxMaxWarningDupFlag + '"') else ""} \
      ~{true="--accept-hard-clip" false="" acceptAcceptHardClip} \
      ~{true="--allow-multi-map" false="" allowAllowMultiMap} \
      ~{true="--make-spots-with-secondary" false="" makeMakeSpotsWithSecondary} \
      ~{true="--defer-secondary" false="" deferDeferSecondary} \
      ~{if defined(xmlXmlLog) then ("--xml-log " +  '"' + xmlXmlLog + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}