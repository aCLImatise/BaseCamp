version 1.0

task Motifscan {
  input {
    Boolean? v
  }
  command <<<
    motifscan \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}