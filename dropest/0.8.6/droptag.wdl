version 1.0

task Droptag {
  input {
    File configConfig
    String logLogPrefix
    String nameName
    String parallelParallel
    Boolean saveSaveReadsParams
    Boolean saveSaveStats
    Boolean readsReadsPerOutFile
    String libLibTag
    Boolean quietQuiet
  }
  command <<<
    droptag \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(logLogPrefix) then ("--log-prefix " +  '"' + logLogPrefix + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(parallelParallel) then ("--parallel " +  '"' + parallelParallel + '"') else ""} \
      ~{true="--save-reads-params" false="" saveSaveReadsParams} \
      ~{true="--save-stats" false="" saveSaveStats} \
      ~{true="--reads-per-out-file" false="" readsReadsPerOutFile} \
      ~{if defined(libLibTag) then ("--lib-tag " +  '"' + libLibTag + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}