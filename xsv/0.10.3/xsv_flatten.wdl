version 1.0

task XsvFlatten {
  input {
    String condenseCondense
    String separatorSeparator
    Boolean noNoHeaders
    String delimiterDelimiter
    String? inputInput
  }
  command <<<
    xsv flatten \
      ~{inputInput} \
      ~{if defined(condenseCondense) then ("--condense " +  '"' + condenseCondense + '"') else ""} \
      ~{if defined(separatorSeparator) then ("--separator " +  '"' + separatorSeparator + '"') else ""} \
      ~{true="--no-headers" false="" noNoHeaders} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""}
  >>>
}