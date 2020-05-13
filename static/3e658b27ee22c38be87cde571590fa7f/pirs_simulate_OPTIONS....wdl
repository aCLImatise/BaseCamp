version 1.0

task PirsSimulateOPTIONS... {
  input {
    Boolean noNoGcContentBias
    String outputOutputPrefix
    String outputOutputFileType
    Boolean compressCompress
    Boolean noNoLogFiles
    String randomRandomSeed
    String threadsThreads
    Boolean quietQuiet
  }
  command <<<
    pirs simulate OPTIONS... \
      ~{true="--no-gc-content-bias" false="" noNoGcContentBias} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(outputOutputFileType) then ("--output-file-type " +  '"' + outputOutputFileType + '"') else ""} \
      ~{true="--compress" false="" compressCompress} \
      ~{true="--no-log-files" false="" noNoLogFiles} \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}