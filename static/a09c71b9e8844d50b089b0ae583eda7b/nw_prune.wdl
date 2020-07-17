version 1.0

task NwPrune {
  input {
    Boolean? hv
  }
  command <<<
    nw_prune \
      ~{true="-hv" false="" hv}
  >>>
  parameter_meta {
    hv: ""
  }
}