version 1.0

task _water {
  input {
    Boolean gapGapOpen
    Boolean gapGapExtend
  }
  command <<<
    _water \
      ~{true="-gapopen" false="" gapGapOpen} \
      ~{true="-gapextend" false="" gapGapExtend}
  >>>
}