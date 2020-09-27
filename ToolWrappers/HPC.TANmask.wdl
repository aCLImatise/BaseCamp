version 1.0

task HPCTANmask {
  input {
    Boolean? v
  }
  command <<<
    HPC_TANmask \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}