version 1.0

task LAcat {
  input {
    Boolean? v
  }
  command <<<
    LAcat \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}