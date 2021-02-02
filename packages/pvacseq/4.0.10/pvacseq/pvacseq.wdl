version 1.0

task Pvacseq {
  input {
    Boolean? v
  }
  command <<<
    pvacseq \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}