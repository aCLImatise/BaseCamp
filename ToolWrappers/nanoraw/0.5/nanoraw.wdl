version 1.0

task Nanoraw {
  input {
    Boolean? v
  }
  command <<<
    nanoraw \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}