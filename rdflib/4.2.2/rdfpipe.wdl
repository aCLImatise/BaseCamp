version 1.0

task Rdfpipe {
  input {
    String inputInputFormat
    String outputOutputFormat
    String nsNs
    Boolean noNoGuess
    Boolean noNoOut
    Boolean warnWarn
  }
  command <<<
    rdfpipe \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(nsNs) then ("--ns " +  '"' + nsNs + '"') else ""} \
      ~{true="--no-guess" false="" noNoGuess} \
      ~{true="--no-out" false="" noNoOut} \
      ~{true="--warn" false="" warnWarn}
  >>>
}