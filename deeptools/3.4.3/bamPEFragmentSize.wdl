version 1.0

task BamPEFragmentSize {
  input {
    File tableTable
    File outOutRawFragmentLengths
    Boolean verboseVerbose
  }
  command <<<
    bamPEFragmentSize \
      ~{if defined(tableTable) then ("--table " +  '"' + tableTable + '"') else ""} \
      ~{if defined(outOutRawFragmentLengths) then ("--outRawFragmentLengths " +  '"' + outOutRawFragmentLengths + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}