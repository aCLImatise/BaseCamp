version 1.0

task XsvCat {
  input {
    Boolean padPad
    File outputOutput
    Boolean noNoHeaders
    String delimiterDelimiter
  }
  command <<<
    xsv cat \
      ~{true="--pad" false="" padPad} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--no-headers" false="" noNoHeaders} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""}
  >>>
}