version 1.0

task Pauvre {
  input {
    Boolean? v
  }
  command <<<
    pauvre \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}