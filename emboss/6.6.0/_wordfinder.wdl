version 1.0

task _wordfinder {
  input {
    Boolean gapGapOpen
    Boolean gapGapExtend
  }
  command <<<
    _wordfinder \
      ~{true="-gapopen" false="" gapGapOpen} \
      ~{true="-gapextend" false="" gapGapExtend}
  >>>
}