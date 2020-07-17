version 1.0

task Samplot {
  input {
    Boolean? v
  }
  command <<<
    samplot \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}