version 1.0

task Einverted {
  input {
    Boolean gapGap
    Boolean thresholdThreshold
    Boolean matchMatch
    Boolean mismatchMismatch
  }
  command <<<
    einverted \
      ~{true="-gap" false="" gapGap} \
      ~{true="-threshold" false="" thresholdThreshold} \
      ~{true="-match" false="" matchMatch} \
      ~{true="-mismatch" false="" mismatchMismatch}
  >>>
}