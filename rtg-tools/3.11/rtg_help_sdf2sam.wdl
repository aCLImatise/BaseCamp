version 1.0

task RtgHelpSdf2sam {
  input {
    String inputInput
    File outputOutput
    Boolean noNoGzip
  }
  command <<<
    rtg help sdf2sam \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--no-gzip" false="" noNoGzip}
  >>>
}