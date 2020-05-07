version 1.0

task Srapath.2.10.3 {
  input {
    String functionFunction
    String timeoutTimeout
    String protocolProtocol
    String versVers
    String urlUrl
    String paramParam
    Boolean rawRaw
    Boolean jsonJson
    Boolean projectProject
    Boolean cacheCache
    Boolean pathPath
    File ngcNgc
    File permPerm
    String locationLocation
    File cartCart
    Boolean disableDisableMultithreading
    String logLogLevel
    File optionOptionFile
  }
  command <<<
    srapath.2.10.3 \
      ~{if defined(functionFunction) then ("--function " +  '"' + functionFunction + '"') else ""} \
      ~{if defined(timeoutTimeout) then ("--timeout " +  '"' + timeoutTimeout + '"') else ""} \
      ~{if defined(protocolProtocol) then ("--protocol " +  '"' + protocolProtocol + '"') else ""} \
      ~{if defined(versVers) then ("--vers " +  '"' + versVers + '"') else ""} \
      ~{if defined(urlUrl) then ("--url " +  '"' + urlUrl + '"') else ""} \
      ~{if defined(paramParam) then ("--param " +  '"' + paramParam + '"') else ""} \
      ~{true="--raw" false="" rawRaw} \
      ~{true="--json" false="" jsonJson} \
      ~{true="--project" false="" projectProject} \
      ~{true="--cache" false="" cacheCache} \
      ~{true="--path" false="" pathPath} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{if defined(permPerm) then ("--perm " +  '"' + permPerm + '"') else ""} \
      ~{if defined(locationLocation) then ("--location " +  '"' + locationLocation + '"') else ""} \
      ~{if defined(cartCart) then ("--cart " +  '"' + cartCart + '"') else ""} \
      ~{true="--disable-multithreading" false="" disableDisableMultithreading} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}