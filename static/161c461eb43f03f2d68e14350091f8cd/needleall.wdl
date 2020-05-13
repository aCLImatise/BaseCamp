version 1.0

task Needleall {
  input {
    Boolean gapGapOpen
    Boolean gapGapExtend
  }
  command <<<
    needleall \
      ~{true="-gapopen" false="" gapGapOpen} \
      ~{true="-gapextend" false="" gapGapExtend}
  >>>
}