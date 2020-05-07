version 1.0

task ReadSeqToStk {
  input {
    String headerHeader
    Boolean removeRemoveRef
  }
  command <<<
    ReadSeq to-stk \
      ~{if defined(headerHeader) then ("--header " +  '"' + headerHeader + '"') else ""} \
      ~{true="--removeref" false="" removeRemoveRef}
  >>>
}