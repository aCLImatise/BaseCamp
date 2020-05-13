version 1.0

task XsvIndex {
  input {
    File outputOutput
    String delimiterDelimiter
    String? inputInput
  }
  command <<<
    xsv index \
      ~{inputInput} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""}
  >>>
}