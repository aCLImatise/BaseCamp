version 1.0

task Mentalist {
  input {
    Boolean? v
  }
  command <<<
    mentalist \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}