version 1.0

task Bohra {
  input {
    Boolean? v
  }
  command <<<
    bohra \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}