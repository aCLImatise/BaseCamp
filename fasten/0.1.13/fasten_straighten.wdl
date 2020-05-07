version 1.0

task FastenStraighten {
  input {
    Int numNumCpus
    Boolean pairedPairedEnd
    Boolean verboseVerbose
  }
  command <<<
    fasten_straighten \
      ~{if defined(numNumCpus) then ("--numcpus " +  '"' + numNumCpus + '"') else ""} \
      ~{true="--paired-end" false="" pairedPairedEnd} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}