version 1.0

task Needle {
  input {
    Boolean gapGapOpen
    Boolean gapGapExtend
  }
  command <<<
    needle \
      ~{true="-gapopen" false="" gapGapOpen} \
      ~{true="-gapextend" false="" gapGapExtend}
  >>>
}