version 1.0

task LatfLoad.2 {
  input {
    File outputOutput
    Boolean qualityQuality
    File tmpfsTmpfs
    String qualQualQuant
    String cacheCacheSize
    String maxMaxRecCount
    String maxMaxErrCount
    Boolean platformPlatform
    Boolean maxMaxErrPct
    Boolean ignoreIgnoreIlluminaTags
    String xmlXmlLog
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
  }
  command <<<
    latf-load.2 \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--quality" false="" qualityQuality} \
      ~{if defined(tmpfsTmpfs) then ("--tmpfs " +  '"' + tmpfsTmpfs + '"') else ""} \
      ~{if defined(qualQualQuant) then ("--qual-quant " +  '"' + qualQualQuant + '"') else ""} \
      ~{if defined(cacheCacheSize) then ("--cache-size " +  '"' + cacheCacheSize + '"') else ""} \
      ~{if defined(maxMaxRecCount) then ("--max-rec-count " +  '"' + maxMaxRecCount + '"') else ""} \
      ~{if defined(maxMaxErrCount) then ("--max-err-count " +  '"' + maxMaxErrCount + '"') else ""} \
      ~{true="--platform" false="" platformPlatform} \
      ~{true="--max-err-pct" false="" maxMaxErrPct} \
      ~{true="--ignore-illumina-tags" false="" ignoreIgnoreIlluminaTags} \
      ~{if defined(xmlXmlLog) then ("--xml-log " +  '"' + xmlXmlLog + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}