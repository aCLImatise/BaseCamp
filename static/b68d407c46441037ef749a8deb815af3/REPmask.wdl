version 1.0

task REPmask {
  input {
    Boolean? v
  }
  command <<<
    REPmask \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}