version 1.0

task TraceSeqExtractSeq {
  input {
    String no
    String such
    File file
    String or
    Directory directory
  }
  command <<<
    trace_seq extract_seq \
      ~{no} \
      ~{such} \
      ~{file} \
      ~{or} \
      ~{directory}
  >>>
  parameter_meta {
    no: ""
    such: ""
    file: ""
    or: ""
    directory: ""
  }
}