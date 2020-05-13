version 1.0

task _einverted {
  input {
    Boolean gapGap
    Boolean thresholdThreshold
    Boolean matchMatch
    Boolean mismatchMismatch
  }
  command <<<
    _einverted \
      ~{true="-gap" false="" gapGap} \
      ~{true="-threshold" false="" thresholdThreshold} \
      ~{true="-match" false="" matchMatch} \
      ~{true="-mismatch" false="" mismatchMismatch}
  >>>
}