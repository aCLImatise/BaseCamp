version 1.0

task RtgHelpSvdecompose {
  input {
    File inputInput
    File outputOutput
    Int minMinInDelLength
    Boolean noNoGzip
    Boolean noNoHeader
  }
  command <<<
    rtg help svdecompose \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(minMinInDelLength) then ("--min-indel-length " +  '"' + minMinInDelLength + '"') else ""} \
      ~{true="--no-gzip" false="" noNoGzip} \
      ~{true="--no-header" false="" noNoHeader}
  >>>
}