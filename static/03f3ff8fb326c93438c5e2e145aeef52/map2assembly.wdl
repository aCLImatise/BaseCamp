version 1.0

task Map2assembly {
  input {
    Boolean cpusCpus
    Boolean retryRetry
    Boolean forceForce
    Boolean againAgain
    Boolean quietQuiet
    String? genomeGenomeFastA
    String? transcriptsTranscriptsFastA
  }
  command <<<
    map2assembly \
      ~{genomeGenomeFastA} \
      ~{true="-cpus" false="" cpusCpus} \
      ~{true="-retry" false="" retryRetry} \
      ~{true="-force" false="" forceForce} \
      ~{true="-again" false="" againAgain} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{transcriptsTranscriptsFastA}
  >>>
}