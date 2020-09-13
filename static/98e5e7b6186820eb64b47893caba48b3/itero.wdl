version 1.0

task Itero {
  input {
    Boolean? v
  }
  command <<<
    itero \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}