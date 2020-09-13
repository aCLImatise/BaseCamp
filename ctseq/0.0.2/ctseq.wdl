version 1.0

task Ctseq {
  input {
    Boolean? v
  }
  command <<<
    ctseq \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}