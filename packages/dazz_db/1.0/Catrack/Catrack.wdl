version 1.0

task Catrack {
  input {
    Boolean? v
  }
  command <<<
    Catrack \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}