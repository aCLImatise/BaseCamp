version 1.0

task XsvSearch {
  input {
    Boolean ignoreIgnoreCase
    String selectSelect
    Boolean invertInvertMatch
    File outputOutput
    Boolean noNoHeaders
    String delimiterDelimiter
    String? regexRegex
    String? inputInput
  }
  command <<<
    xsv search \
      ~{regexRegex} \
      ~{true="--ignore-case" false="" ignoreIgnoreCase} \
      ~{if defined(selectSelect) then ("--select " +  '"' + selectSelect + '"') else ""} \
      ~{true="--invert-match" false="" invertInvertMatch} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--no-headers" false="" noNoHeaders} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{inputInput}
  >>>
}