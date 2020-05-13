version 1.0

task AlignTrimN {
  input {
    Boolean verboseVerbose
    String? nNBases
  }
  command <<<
    align_trim_n \
      ~{nNBases} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}