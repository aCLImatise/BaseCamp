version 1.0

task XsvSelect {
  input {
    File outputOutput
    Boolean noNoHeaders
    String delimiterDelimiter
  }
  command <<<
    xsv select \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--no-headers" false="" noNoHeaders} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""}
  >>>
}