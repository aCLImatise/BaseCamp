version 1.0

task Repaq {
  input {
    Boolean stdinStdin
    Boolean stdoutStdout
    Boolean interleavedInterleavedIn
    Boolean compareCompare
    Boolean rfqRfqToCompare
    Boolean jsonJsonCompareResult
    Boolean threadThread
    Boolean compressionCompression
  }
  command <<<
    repaq \
      ~{true="--stdin" false="" stdinStdin} \
      ~{true="--stdout" false="" stdoutStdout} \
      ~{true="--interleaved_in" false="" interleavedInterleavedIn} \
      ~{true="--compare" false="" compareCompare} \
      ~{true="--rfq_to_compare" false="" rfqRfqToCompare} \
      ~{true="--json_compare_result" false="" jsonJsonCompareResult} \
      ~{true="--thread" false="" threadThread} \
      ~{true="--compression" false="" compressionCompression}
  >>>
}