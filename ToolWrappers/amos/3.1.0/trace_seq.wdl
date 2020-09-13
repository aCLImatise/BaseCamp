version 1.0

task TraceSeq {
  input {
    Boolean? r
    String extract_seq
  }
  command <<<
    trace_seq \
      ~{extract_seq} \
      ~{if (r) then "-r" else ""}
  >>>
  parameter_meta {
    r: ""
    extract_seq: ""
  }
  output {
    File out_stdout = stdout()
  }
}