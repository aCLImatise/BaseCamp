version 1.0

task FastenReplace {
  input {
    Int numNumCpus
    Boolean pairedPairedEnd
    Boolean verboseVerbose
    String findFind
    String replaceReplace
    String whichWhich
  }
  command <<<
    fasten_replace \
      ~{if defined(numNumCpus) then ("--numcpus " +  '"' + numNumCpus + '"') else ""} \
      ~{true="--paired-end" false="" pairedPairedEnd} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(findFind) then ("--find " +  '"' + findFind + '"') else ""} \
      ~{if defined(replaceReplace) then ("--replace " +  '"' + replaceReplace + '"') else ""} \
      ~{if defined(whichWhich) then ("--which " +  '"' + whichWhich + '"') else ""}
  >>>
}