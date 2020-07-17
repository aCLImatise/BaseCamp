version 1.0

task HPC.TANmask {
  input {
    Boolean? v
  }
  command <<<
    HPC.TANmask \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}