version 1.0

task Tabview {
  input {
    String encodingEncoding
    String delimiterDelimiter
    String quotingQuoting
    String startStartPos
    String widthWidth
    Boolean doubleDoubleWidth
    String quoteQuoteChar
    File? filenameFilename
  }
  command <<<
    tabview \
      ~{filenameFilename} \
      ~{if defined(encodingEncoding) then ("--encoding " +  '"' + encodingEncoding + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{if defined(quotingQuoting) then ("--quoting " +  '"' + quotingQuoting + '"') else ""} \
      ~{if defined(startStartPos) then ("--start_pos " +  '"' + startStartPos + '"') else ""} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{true="--double_width" false="" doubleDoubleWidth} \
      ~{if defined(quoteQuoteChar) then ("--quote-char " +  '"' + quoteQuoteChar + '"') else ""}
  >>>
}