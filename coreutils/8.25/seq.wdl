version 1.0

task Seq {
  input {
    String formatFormat
    String separatorSeparator
    Boolean equalEqualWidth
  }
  command <<<
    seq \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(separatorSeparator) then ("--separator " +  '"' + separatorSeparator + '"') else ""} \
      ~{true="--equal-width" false="" equalEqualWidth}
  >>>
}