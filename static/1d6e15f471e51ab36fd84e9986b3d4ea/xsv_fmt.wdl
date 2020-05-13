version 1.0

task XsvFmt {
  input {
    String outOutDelimiter
    Boolean crlfCrlf
    Boolean asciiAscii
    String quoteQuote
    Boolean quoteQuoteAlways
    String escapeEscape
    File outputOutput
    String delimiterDelimiter
    String? inputInput
  }
  command <<<
    xsv fmt \
      ~{inputInput} \
      ~{if defined(outOutDelimiter) then ("--out-delimiter " +  '"' + outOutDelimiter + '"') else ""} \
      ~{true="--crlf" false="" crlfCrlf} \
      ~{true="--ascii" false="" asciiAscii} \
      ~{if defined(quoteQuote) then ("--quote " +  '"' + quoteQuote + '"') else ""} \
      ~{true="--quote-always" false="" quoteQuoteAlways} \
      ~{if defined(escapeEscape) then ("--escape " +  '"' + escapeEscape + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""}
  >>>
}