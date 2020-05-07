version 1.0

task FastenTrim {
  input {
    Int numNumCpus
    Boolean pairedPairedEnd
    Boolean verboseVerbose
    Int firstFirstBase
    Int lastLastBase
  }
  command <<<
    fasten_trim \
      ~{if defined(numNumCpus) then ("--numcpus " +  '"' + numNumCpus + '"') else ""} \
      ~{true="--paired-end" false="" pairedPairedEnd} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(firstFirstBase) then ("--first-base " +  '"' + firstFirstBase + '"') else ""} \
      ~{if defined(lastLastBase) then ("--last-base " +  '"' + lastLastBase + '"') else ""}
  >>>
}