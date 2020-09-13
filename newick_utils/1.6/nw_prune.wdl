version 1.0

task NwPrune {
  input {
    Boolean? hv
  }
  command <<<
    nw_prune \
      ~{if (hv) then "-hv" else ""}
  >>>
  parameter_meta {
    hv: ""
  }
  output {
    File out_stdout = stdout()
  }
}