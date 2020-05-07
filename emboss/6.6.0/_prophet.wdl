version 1.0

task _prophet {
  input {
    Boolean gapGapOpen
    Boolean gapGapExtend
  }
  command <<<
    _prophet \
      ~{true="-gapopen" false="" gapGapOpen} \
      ~{true="-gapextend" false="" gapGapExtend}
  >>>
}