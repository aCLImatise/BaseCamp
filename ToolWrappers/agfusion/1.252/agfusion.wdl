version 1.0

task Agfusion {
  input {
    Boolean? v
  }
  command <<<
    agfusion \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}