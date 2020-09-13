version 1.0

task REPmask {
  input {
    Boolean? v
  }
  command <<<
    REPmask \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}