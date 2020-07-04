version 1.0

task Chado {
  input {
    Boolean? v
  }
  command <<<
    chado \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
  }
}