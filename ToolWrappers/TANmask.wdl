version 1.0

task TANmask {
  input {
    Boolean? v
  }
  command <<<
    TANmask \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}