version 1.0

task FastqUniq {
  input {
    Boolean verboseVerbose
  }
  command <<<
    fastq-uniq \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}