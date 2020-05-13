version 1.0

task Pbmarkdup {
  input {
    Boolean crossCrossLibrary
    Boolean rmdRmdUp
    Boolean dupDupFile
    Boolean clobberClobber
    Boolean numNumThreads
    Boolean logLogLevel
    Boolean logLogFile
  }
  command <<<
    pbmarkdup \
      ~{true="--cross-library" false="" crossCrossLibrary} \
      ~{true="--rmdup" false="" rmdRmdUp} \
      ~{true="--dup-file" false="" dupDupFile} \
      ~{true="--clobber" false="" clobberClobber} \
      ~{true="--num-threads" false="" numNumThreads} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-file" false="" logLogFile}
  >>>
}