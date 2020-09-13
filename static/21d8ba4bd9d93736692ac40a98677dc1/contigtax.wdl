version 1.0

task Contigtax {
  input {
    Boolean? v
  }
  command <<<
    contigtax \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}