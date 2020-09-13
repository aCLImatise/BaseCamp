version 1.0

task Poretools {
  input {
    Boolean? v
  }
  command <<<
    poretools \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}