version 1.0

task Pauvre {
  input {
    Boolean? v
  }
  command <<<
    pauvre \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}