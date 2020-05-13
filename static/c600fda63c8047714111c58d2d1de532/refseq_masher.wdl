version 1.0

task RefseqMasher {
  input {
    Boolean verboseVerbose
  }
  command <<<
    refseq_masher \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}