version 1.0

task GffToVcf {
  input {
    Boolean emitEmitToolContract
    String resolvedResolvedToolContract
    String logLogFile
    String logLogLevel
    Boolean debugDebug
    Boolean quietQuiet
    Boolean verboseVerbose
    String globalGlobalReference
    String? gffGffFile
  }
  command <<<
    gffToVcf \
      ~{gffGffFile} \
      ~{true="--emit-tool-contract" false="" emitEmitToolContract} \
      ~{if defined(resolvedResolvedToolContract) then ("--resolved-tool-contract " +  '"' + resolvedResolvedToolContract + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(globalGlobalReference) then ("--globalReference " +  '"' + globalGlobalReference + '"') else ""}
  >>>
}