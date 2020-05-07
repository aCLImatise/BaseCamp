version 1.0

task Pbmm2Index {
  input {
    Boolean presetPreset
    Boolean kK
    Boolean wW
    Boolean noNoKmErCompression
    Boolean numNumThreads
    Boolean logLogLevel
    Boolean logLogFile
  }
  command <<<
    pbmm2 index \
      ~{true="--preset" false="" presetPreset} \
      ~{true="-k" false="" kK} \
      ~{true="-w" false="" wW} \
      ~{true="--no-kmer-compression" false="" noNoKmErCompression} \
      ~{true="--num-threads" false="" numNumThreads} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-file" false="" logLogFile}
  >>>
}