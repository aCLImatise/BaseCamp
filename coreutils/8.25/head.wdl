version 1.0

task Head {
  input {
    Boolean bytesBytes
    Boolean linesLines
    String silentSilent
    String verboseVerbose
    Boolean zeroZeroTerminated
  }
  command <<<
    head \
      ~{true="--bytes" false="" bytesBytes} \
      ~{true="--lines" false="" linesLines} \
      ~{if defined(silentSilent) then ("--silent " +  '"' + silentSilent + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{true="--zero-terminated" false="" zeroZeroTerminated}
  >>>
}