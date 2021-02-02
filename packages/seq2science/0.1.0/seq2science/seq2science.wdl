version 1.0

task Seq2science {
  input {
    Boolean? v
  }
  command <<<
    seq2science \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}