version 1.0

task XsvInput {
  input {
    String quoteQuote
    String escapeEscape
    File outputOutput
    String delimiterDelimiter
    String? inputInput
  }
  command <<<
    xsv input \
      ~{inputInput} \
      ~{if defined(quoteQuote) then ("--quote " +  '"' + quoteQuote + '"') else ""} \
      ~{if defined(escapeEscape) then ("--escape " +  '"' + escapeEscape + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""}
  >>>
}