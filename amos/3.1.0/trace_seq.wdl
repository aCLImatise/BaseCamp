version 1.0

task TraceSeq {
  input {
    Boolean? r
  }
  command <<<
    trace_seq \
      ~{true="-r" false="" r}
  >>>
  parameter_meta {
    r: ""
  }
}