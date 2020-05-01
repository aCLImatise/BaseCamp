version 1.0

task SrapathOrig.2.10.3 {
  input {
    Boolean functionFunction
    Boolean locationLocation
    Boolean timeoutTimeout
    Boolean protocolProtocol
    Boolean versVers
    Boolean urlUrl
    Boolean paramParam
    Boolean rawRaw
    Boolean jsonJson
    Boolean projectProject
    Boolean cacheCache
    Boolean pathPath
    File permPerm
    File ngcNgc
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
  }
  command <<<
    srapath-orig.2.10.3 \
      ~{true="--function" false="" functionFunction} \
      ~{true="--location" false="" locationLocation} \
      ~{true="--timeout" false="" timeoutTimeout} \
      ~{true="--protocol" false="" protocolProtocol} \
      ~{true="--vers" false="" versVers} \
      ~{true="--url" false="" urlUrl} \
      ~{true="--param" false="" paramParam} \
      ~{true="--raw" false="" rawRaw} \
      ~{true="--json" false="" jsonJson} \
      ~{true="--project" false="" projectProject} \
      ~{true="--cache" false="" cacheCache} \
      ~{true="--path" false="" pathPath} \
      ~{if defined(permPerm) then ("--perm " +  '"' + permPerm + '"') else ""} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}