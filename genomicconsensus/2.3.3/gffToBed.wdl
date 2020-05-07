version 1.0

task GffToBed {
  input {
    Boolean emitEmitToolContract
    String resolvedResolvedToolContract
    String logLogFile
    String logLogLevel
    Boolean debugDebug
    Boolean quietQuiet
    Boolean verboseVerbose
    String nameName
    String descriptionDescription
    String useUseScore
    String? gffGff
  }
  command <<<
    gffToBed \
      ~{gffGff} \
      ~{true="--emit-tool-contract" false="" emitEmitToolContract} \
      ~{if defined(resolvedResolvedToolContract) then ("--resolved-tool-contract " +  '"' + resolvedResolvedToolContract + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{if defined(useUseScore) then ("--useScore " +  '"' + useUseScore + '"') else ""}
  >>>
}