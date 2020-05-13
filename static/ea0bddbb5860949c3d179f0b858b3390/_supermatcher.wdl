version 1.0

task _supermatcher {
  input {
    Boolean gapGapOpen
    Boolean gapGapExtend
  }
  command <<<
    _supermatcher \
      ~{true="-gapopen" false="" gapGapOpen} \
      ~{true="-gapextend" false="" gapGapExtend}
  >>>
}