version 1.0

task DBrm {
  input {
    Boolean? v
  }
  command <<<
    DBrm \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}