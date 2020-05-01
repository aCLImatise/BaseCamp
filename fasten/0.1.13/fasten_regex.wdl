version 1.0

task FastenRegex {
  input {
    Int numNumCpus
    Boolean pairedPairedEnd
    Boolean verboseVerbose
    String regexRegex
    String whichWhich
  }
  command <<<
    fasten_regex \
      ~{if defined(numNumCpus) then ("--numcpus " +  '"' + numNumCpus + '"') else ""} \
      ~{true="--paired-end" false="" pairedPairedEnd} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(regexRegex) then ("--regex " +  '"' + regexRegex + '"') else ""} \
      ~{if defined(whichWhich) then ("--which " +  '"' + whichWhich + '"') else ""}
  >>>
}