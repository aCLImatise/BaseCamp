version 1.0

task Tedna {
  input {
    Boolean insertInsert
    Boolean kmKmEr
    Boolean outputOutput
    Boolean thresholdThreshold
    Boolean minMinTeSize
    Boolean maxMaxTeSize
    Boolean processorsProcessors
    Boolean bytesBytesPerThread
    Boolean maxMaxReads
    Boolean checkCheck
  }
  command <<<
    tedna \
      ~{true="--insert" false="" insertInsert} \
      ~{true="--kmer" false="" kmKmEr} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--threshold" false="" thresholdThreshold} \
      ~{true="--min-te-size" false="" minMinTeSize} \
      ~{true="--max-te-size" false="" maxMaxTeSize} \
      ~{true="--processors" false="" processorsProcessors} \
      ~{true="--bytes-per-thread" false="" bytesBytesPerThread} \
      ~{true="--max-reads" false="" maxMaxReads} \
      ~{true="--check" false="" checkCheck}
  >>>
}