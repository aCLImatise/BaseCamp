version 1.0

task XsvFixlengths {
  input {
    String lengthLength
    File outputOutput
    String delimiterDelimiter
    String? inputInput
  }
  command <<<
    xsv fixlengths \
      ~{inputInput} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""}
  >>>
}