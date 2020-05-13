version 1.0

task XsvSort {
  input {
    String selectSelect
    File outputOutput
    Boolean noNoHeaders
    String delimiterDelimiter
    String? inputInput
  }
  command <<<
    xsv sort \
      ~{inputInput} \
      ~{if defined(selectSelect) then ("--select " +  '"' + selectSelect + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--no-headers" false="" noNoHeaders} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""}
  >>>
}