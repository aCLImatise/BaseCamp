version 1.0

task Fermi2Sub {
  input {
    Boolean? cs
  }
  command <<<
    fermi2 sub \
      ~{if (cs) then "-cs" else ""}
  >>>
  parameter_meta {
    cs: ""
  }
  output {
    File out_stdout = stdout()
  }
}