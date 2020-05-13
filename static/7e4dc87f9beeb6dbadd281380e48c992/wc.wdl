version 1.0

task Wc {
  input {
    Boolean bytesBytes
    Boolean charsChars
    Boolean linesLines
    String filesFiles0From
    Boolean maxMaxLineLength
    Boolean wordsWords
  }
  command <<<
    wc \
      ~{true="--bytes" false="" bytesBytes} \
      ~{true="--chars" false="" charsChars} \
      ~{true="--lines" false="" linesLines} \
      ~{if defined(filesFiles0From) then ("--files0-from " +  '"' + filesFiles0From + '"') else ""} \
      ~{true="--max-line-length" false="" maxMaxLineLength} \
      ~{true="--words" false="" wordsWords}
  >>>
}