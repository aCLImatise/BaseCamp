version 1.0

task MmseqsConvertalis {
  input {
    Boolean formatFormatMode
    Boolean noNoPreload
    Boolean dbDbOutput
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs convertalis \
      ~{true="--format-mode" false="" formatFormatMode} \
      ~{true="--no-preload" false="" noNoPreload} \
      ~{true="--db-output" false="" dbDbOutput} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}