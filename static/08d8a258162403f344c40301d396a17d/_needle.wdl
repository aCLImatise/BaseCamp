version 1.0

task _needle {
  input {
    Boolean gapGapOpen
    Boolean gapGapExtend
  }
  command <<<
    _needle \
      ~{true="-gapopen" false="" gapGapOpen} \
      ~{true="-gapextend" false="" gapGapExtend}
  >>>
}