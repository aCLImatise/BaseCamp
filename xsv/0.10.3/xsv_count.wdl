version 1.0

task XsvCount {
  input {
    Boolean noNoHeaders
    String delimiterDelimiter
    String? inputInput
  }
  command <<<
    xsv count \
      ~{inputInput} \
      ~{true="--no-headers" false="" noNoHeaders} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""}
  >>>
}