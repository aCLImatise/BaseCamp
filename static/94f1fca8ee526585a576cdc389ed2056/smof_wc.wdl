version 1.0

task SmofWc {
  input {
    Boolean charsChars
    Boolean linesLines
    String? inputInput
  }
  command <<<
    smof wc \
      ~{inputInput} \
      ~{true="--chars" false="" charsChars} \
      ~{true="--lines" false="" linesLines}
  >>>
}