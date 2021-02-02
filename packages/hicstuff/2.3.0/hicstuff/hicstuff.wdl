version 1.0

task Hicstuff {
  input {
    Boolean? hv
  }
  command <<<
    hicstuff \
      ~{if (hv) then "-hv" else ""}
  >>>
  parameter_meta {
    hv: ""
  }
  output {
    File out_stdout = stdout()
  }
}