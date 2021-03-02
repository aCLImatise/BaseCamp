version 1.0

task NovoutilSequence {
  input {
    String seq_id
    String from
    String to
  }
  command <<<
    novoutil sequence \
      ~{seq_id} \
      ~{from} \
      ~{to}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    seq_id: "is either a numerical seqidx or a unique string from the desired sequence header."
    from: "is first base to extracted (1 based counting)."
    to: "is the last base to be extracted."
  }
  output {
    File out_stdout = stdout()
  }
}