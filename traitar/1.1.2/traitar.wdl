version 1.0

task Traitar {
  input {
    Boolean? v
  }
  command <<<
    traitar \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}