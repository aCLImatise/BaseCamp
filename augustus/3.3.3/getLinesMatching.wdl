version 1.0

task GetLinesMatching.pl {
  input {
    Boolean whitespaceWhitespace
  }
  command <<<
    getLinesMatching.pl \
      ~{true="--whitespace" false="" whitespaceWhitespace}
  >>>
}