version 1.0

task RgtTDF {
  input {
    Boolean? v
  }
  command <<<
    rgt_TDF \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}